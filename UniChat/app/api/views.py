from django.shortcuts import HttpResponse
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from rest_framework.generics import GenericAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.db.models import Q
from user.models import MyUser
from app.models import Message, PvRoom, PvMember
from app.api.serializers import MessageSerializer, PvMemberSerializer
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
    serializer_class    = PvMemberSerializer
    permission_classes  = [IsAuthenticated]
#
#     def get_queryset(self, username):
#         rooms = PvMember.objects.filter(user_id__username=username).values_list('id')
#         print(rooms)
#         return rooms
#
    def get(self, request, username):
        pass
#         print(self.get_queryset)
#         return Response(data={
#             "response": "OK",
#             "username": username
#         })

