from rest_framework import serializers

from app.models import Message
from user.models import MyUser


class MessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Message
        fields = '__all__'


class PvRoomsSerializer(serializers.Serializer):
    room_id         = serializers.IntegerField()
    last_message    = serializers.CharField(max_length=255)
    username        = serializers.CharField(max_length=255)
    full_name       = serializers.CharField(max_length=255)
    profile_picture = serializers.CharField(max_length=255)
    date            = serializers.DateTimeField()





#TODO: PvRoomSerializer baadan bayad ModelSerializer beshe (Nested ...)