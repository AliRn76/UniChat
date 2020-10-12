from django.shortcuts import HttpResponse
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from rest_framework.generics import GenericAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.db.models import Q
from user.models import MyUser
from django.db.models import Sum
from app.models import Message, PvRoom, PvMember
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
    serializer_class    = PvMemberSerializer
    permission_classes  = [IsAuthenticated]

    def get_pv_rooms(self, username):
        _rooms = PvMember.objects.filter(user_id__username=username).values_list('pv_room_id__id')
        rooms = [i[0] for i in _rooms]
        ''' return [room_id, room_id , ...] '''
        return rooms

    def get_pv_names(self, username):
        rooms = self.get_pv_rooms(username)
        _pv_names = PvMember.objects.filter(Q(pv_room_id__id__in=rooms) & ~Q(user_id__username=username))\
            .values_list('user_id__first_name', 'user_id__last_name', 'user_id__profile_picture', 'pv_room_id__id')

        # pv_names = [str(i[0]) + ' ' + str(i[1]) for i in _pv_names]
        ''' return [('first_name', 'last_name', 'profile_picture', 'room_id'), ...] '''
        return _pv_names

    def get_pv_last_message(self, username):
        rooms = self.get_pv_rooms(username)
        _pv_last_message = Message.objects.filter(Q(is_deleted=False) & Q(pv_room_id__in=rooms))\
            .values_list('text', 'pv_room_id', 'date_added').order_by('pv_room_id', '-date_added')
        last_room = None
        # pv_last_message = [i[0] for i in _pv_last_message if last_room != i[1]]
        pv_last_message = []
        for i in _pv_last_message:
            if last_room != i[1]:
                last_room = i[1]
                pv_last_message.append(i)
        ''' return [('last_message', room_id), ...] '''
        return pv_last_message

    # def get_queryset(self):
    #     pass
    def get_queryset(self, *args, **kwargs):
        username        = self.kwargs.get('username')
        pv_names        = self.get_pv_names(username)
        pv_last_message = self.get_pv_last_message(username)
        _pv_information = []
        for i in range(len(pv_last_message)):
            for j in range(len(pv_names)):
                if pv_last_message[i][1] == pv_names[j][3]:
                    _pv_information.append(pv_last_message[i]+pv_names[j])
        pv_information = [(i[1], i[0], str(i[3])+' '+str(i[4]), i[5], i[2]) for i in _pv_information]
        ''' return [('room_id', 'last_message', 'full_name', 'profile_picture', 'date'), ...] '''
        return pv_information

#

    def get(self, request, username):
        # print(self.get_pv_rooms(username))
        # print(self.get_pv_names(username))
        # print(self.get_pv_last_message(username))
        # print(self.get_queryset())
        return self.list(request)
        # return Response(data={
        #     "success": True,
        #     "username": username,
        #     "response": self.get_queryset(username)
        # })

