from rest_framework import serializers

from app.models import Message, PvMember
from user.models import MyUser


class MessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Message
        fields = '__all__'


class PvRoomsSerializer(serializers.Serializer):
    ''' return [('room_id', 'last_message', 'full_name', 'profile_picture', 'date'), ...] '''



