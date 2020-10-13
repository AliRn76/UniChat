
import asyncio
import json

from channels.generic.websocket import WebsocketConsumer
from django.contrib.auth import get_user_model
from channels.consumer import AsyncConsumer
from channels.db import database_sync_to_async

from .models import Message, MyUser

class MoistureSensorConsumer(AsyncConsumer):

    async def websocket_connect(self, event):
        print("connected", event)
        await self.send({
            "type": "websocket.accept",
        })
        chat_room = "thread_1"
        self.chat_room = chat_room
        await self.channel_layer.group_add(
            chat_room,
            self.channel_name
        )
            # moist_obj = await self.last_moisture()
            # bme_obj = await self.last_bme280()
            # data = {
            #     "username": moist_obj.username,
            #     "text": bme_obj.text,
            #     "id": bme_obj.id,
            # }
        # await self.send({
        #     "type": "websocket.send",
        #     "text": "Hello",
        # })
        # await asyncio.sleep(1)

    async def websocket_receive(self, event):
            print("received", event)
            text = event.get('text', None)
            if text is not None:
                print(text)
                # print(response)
                await self.channel_layer.group_send(
                    self.chat_room,
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
    #
    # @database_sync_to_async
    # def last_moisture(self):
    #     return MyUser.objects.all().last()
    #
    # @database_sync_to_async
    # def last_bme280(self):
    #     return Message.objects.all().last()