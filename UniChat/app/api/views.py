from django.shortcuts import HttpResponse, render
from rest_framework.exceptions import NotFound
from rest_framework.mixins import ListModelMixin, RetrieveModelMixin
from rest_framework.generics import GenericAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.db.models import Q
from user.models import MyUser
from django.db.models import Sum
# from app.models import Message, PvRoom, get_pv_names, get_pv_last_message
from app.models import Message, PvRoom
from app.api.serializers import MessageSerializer, PvRoomsSerializer
from rest_framework.response import Response


def test_ws(request):
    return render(request, "test_ws.html", {})

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
        username = self.kwargs.get('username')

        _rooms = PvRoom.objects.filter(Q(user2_id__username=username) | Q(user1_id__username=username))\
            .values_list('id')
        rooms = [i[0] for i in _rooms]
        ''' rooms return [room_id, room_id, ...] '''

        __pv_names1 = PvRoom.objects.filter(Q(id__in=rooms) & ~Q(user1_id__username=username))\
            .values_list('id', 'user1_id__username', 'user1_id__first_name',
                         'user1_id__last_name', 'user1_id__profile_picture')
        _pv_names1 = [i for i in __pv_names1]

        __pv_names2 = PvRoom.objects.filter(Q(id__in=rooms) & ~Q(user2_id__username=username))\
            .values_list('id', 'user2_id__username', 'user2_id__first_name',
                         'user2_id__last_name', 'user2_id__profile_picture')
        _pv_names2 = [i for i in __pv_names2]

        pv_names = _pv_names1 + _pv_names2
        ''' pv_names return [(room_id, username, first_name, last_name, profile_picture), ...] '''

        _pv_last_message = Message.objects.filter(Q(pv_room_id__in=rooms) & Q(is_deleted=False)) \
            .values_list('pv_room_id', 'text', 'date_added').order_by('pv_room_id', '-date_added')

        last_room = None
        pv_last_message = []
        for i in _pv_last_message:
            if last_room != i[0]:
                last_room = i[0]
                pv_last_message.append(i)
        ''' pv_last_message return [(room_id, last_message), ...] '''

        _queryset = []
        for i in range(len(pv_last_message)):
            for j in range(len(pv_names)):
                if pv_last_message[i][0] == pv_names[j][0]: # if room_id == room_id
                    _queryset.append(pv_last_message[i] + pv_names[j])
        ''' _queryset return [(room_id, text, date, room_id, username, first_name, last_name, profile_picture), ...] '''

        queryset = [
            {
                "room_id": i[0],
                "last_message": i[1],
                "date": i[2],
                "username": i[4],
                "full_name": str(i[5])+' '+str(i[6]),
                "profile_picture": i[7]
            } for i in _queryset]

        return queryset

    def get(self, request, username):
        # print(self.get_queryset())
        result = self.list(request)
        if result.status_code == 200:
            data = {"success": True, "username": username}
            data.update({"results": result.data})
            return Response(data)
        else:
            data = {"success": False, "error": result.exception}
            return Response(data=data, status=result.status_code)


