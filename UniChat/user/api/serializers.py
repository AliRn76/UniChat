from rest_framework import serializers
from django.contrib.auth import password_validation

from user.models import MyUser


class SignupUserSerializer(serializers.ModelSerializer):
    class Meta:
        model   = MyUser
        fields  = ('username', 'password', 'is_male')
        extra_kwargs = {
            "username": {
                "error_messages": {"required": "Give yourself a username"}
            },
            "password": {'write_only': True}
        }

    def validate_password(self, value):
        password_validation.validate_password(value, self.instance)
        return value

    def create(self, validated_data):
        try:
            user = MyUser.objects.create_user(
                validated_data['username'],
                is_male=validated_data['is_male'],
                password=validated_data['password'],
            )
        except:
            user = MyUser.objects.create_user(
                validated_data['username'],
                is_male=True,
                password=validated_data['password'],
            )
        return user


class ProfileSerializer(serializers.ModelSerializer):
    # profile_picture + background_image toosh nist
    class Meta:
        model = MyUser
        fields = ('username', 'first_name', 'last_name', 'email', 'instagram', 'telegram', 'bio',
                  'relationship', 'phone_number', 'birth_date', 'country', 'city', 'job', 'favorite_sport',
                  'favorite_book', 'favorite_movie', 'favorite_tv_series', 'favorite_game', 'favorite_to_travel',
                  'favorite_music', 'background_color', 'font_color', 'background_opacity')


class OthersProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model   = MyUser
        fields  = ('username', 'first_name', 'last_name', 'email', 'instagram', 'telegram', 'bio',
                  'relationship', 'phone_number', 'birth_date', 'country', 'city', 'job', 'favorite_sport',
                  'favorite_book', 'favorite_movie', 'favorite_tv_series', 'favorite_game', 'favorite_to_travel',
                  'favorite_music', 'background_color', 'font_color', 'background_opacity')
