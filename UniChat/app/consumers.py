
import asyncio
import json

from channels.generic.websocket import WebsocketConsumer
from django.contrib.auth import get_user_model
from channels.consumer import AsyncConsumer
from channels.db import database_sync_to_async
from django.contrib.auth.models import AnonymousUser
from django.db.models import Q
from rest_framework.authtoken.models import Token

from .models import Message, MyUser, PvRoom


class MoistureSensorConsumer(AsyncConsumer):

    async def websocket_connect(self, event):
        print("Connected: ", event)
        headers = dict(self.scope['headers'])

        if b'authorization' in headers:
            token_name, token_key = headers[b'authorization'].decode().split()
            if token_name == 'Token':
                self.scope['user'] = await self.get_user_from_token(token_key)

        other_user = self.scope['url_route']['kwargs']['username']
        my_username = self.scope['user']
        print(my_username, other_user)

        room = await self.get_user_room(my_username, other_user)
        pv_room = f"pv_room_{room}"
        self.pv_room = pv_room
        await self.channel_layer.group_add(
            pv_room,
            self.channel_name
        )
        await self.send({
            "type": "websocket.accept",
        })

    async def websocket_receive(self, event):
            print("received", event)
            text = event.get('text', None)
            if text is not None:
                print(text)
                # print(response)
                await self.channel_layer.group_send(
                    self.pv_room,
                    {
                        "type": "send_chat_message",
                        "text": text
                    }
                )
                # await self.send({
                #     "type": "websocket.send",
                #     "text": text
                # })

    async def send_chat_message(self, event):
        await self.send({
            "type": "websocket.send",
            "text": event['text']
        })

    async def websocket_disconnect(self, event):
        print("disconnect", event)

    @database_sync_to_async
    def get_user_from_token(self, token_key):
        token = Token.objects.get(key=token_key)
        return token.user

    @database_sync_to_async
    def get_user_room(self, my_username, other_username):
        if my_username == other_username:
            return None
        q1 = Q(user1_id__username=my_username) & Q(user2_id__username=other_username)
        q2 = Q(user2_id__username=my_username) & Q(user1_id__username=other_username)
        qs = PvRoom.objects.filter(q1 | q2).first()

        print("ROOM: ", qs.id)
        return qs.id
    # @database_sync_to_async
    # def last_moisture(self):
    #     return MyUser.objects.all().last()
    #
    # @database_sync_to_async
    # def last_bme280(self):
    #     return Message.objects.all().last()