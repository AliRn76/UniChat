from rest_framework import serializers
from django.contrib.auth import password_validation

from user.models import MyUser


class SignupUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = MyUser
        fields = ('username', 'password',)
        extra_kwargs = {
            "password": {'write_only': True}
        }

    def validate_password(self, value):
        password_validation.validate_password(value, self.instance)
        return value

    def create(self, validated_data):
        user = MyUser.objects.create_user(
            validated_data['username'],
            password=validated_data['password'],
        )
        return user


class LoginUserSerializer(serializers.ModelSerializer):

    class Meta:
        model = MyUser
        fields = ('username', 'token')
        extra_kwargs = {
            "token": {'read_only': True}
        }


