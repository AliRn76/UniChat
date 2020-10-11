from rest_framework import serializers

from app.models import Message, PvMember


class MessageSerializer(serializers.ModelSerializer):
    class Meta:
        model = Message
        fields = '__all__'


class PvMemberSerializer(serializers.ModelSerializer):
    class Meta:
        model = PvMember
        fields = 'id'

