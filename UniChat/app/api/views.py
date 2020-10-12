from django.shortcuts import HttpResponse
from rest_framework.exceptions import NotFound
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from rest_framework.generics import GenericAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.db.models import Q
from user.models import MyUser
from django.db.models import Sum
from app.models import Message, PvRoom, PvMember,get_pv_names, get_pv_last_message
from app.api.serializers import MessageSerializer, PvRoomsSerializer
from rest_framework.response import Response

class MessageAPIView(GenericAPIView, ListModelMixin, RetrieveModelMixin):
    serializer_class    = MessageSerializer
    queryset            = Message.objects.all()
    permission_classes  = [AllowAny]
    lookup_field        = 'id'

    def get(self, request, id=None):
        if id:
            return self.retrieve(request)
        else:
            return self.list(request)
        # messages = Message.objects.all()
        # serializer = MessageSerializer(messages, many=True)
        # return Response(serializer.data, status=status.HTTP_200_OK)


class PvRoomsAPIVIew(GenericAPIView, ListModelMixin):
    serializer_class    = PvRoomsSerializer
    permission_classes  = [IsAuthenticated]

    def get_queryset(self, *args, **kwargs):
        username        = self.kwargs.get('username')
        pv_names        = get_pv_names(username)
        pv_last_message = get_pv_last_message(username)
        pv_information = []
        for i in range(len(pv_last_message)):
            for j in range(len(pv_names)):
                if pv_last_message[i][1] == pv_names[j][3]:
                    pv_information.append(pv_last_message[i]+pv_names[j])
        queryset = [{
            "room_id": i[1],
            "last_message": i[0],
            "full_name": str(i[3])+' '+str(i[4]),
            "profile_picture": i[5],
            "date": i[2]
            } for i in pv_information]
        return queryset


    def get(self, request, username):
        # print(self.get_pv_rooms(username))
        # print(self.get_pv_names(username))
        # print(self.get_pv_last_message(username))
        # print(self.get_queryset())
        result = self.list(request)
        if result.status_code == 200:
            data = {"success": True, "username": username}
            data.update({"results": result.data})
            return Response(data)
        else:
            data = {"success": False, "error": result.exception}
            return Response(data=data, status=result.status_code)


