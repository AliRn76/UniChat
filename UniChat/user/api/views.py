
from rest_framework.mixins import CreateModelMixin, RetrieveModelMixin
from rest_framework.generics import GenericAPIView
from rest_framework.permissions import AllowAny
from rest_framework.response import Response

from rest_framework.authtoken.models import Token
from user.api.serializers import SignupUserSerializer, LoginUserSerializer
from user.models import MyUser


class SignupUserAPIView(GenericAPIView, CreateModelMixin):
    queryset = MyUser.objects.all()
    serializer_class = SignupUserSerializer
    permission_classes = [AllowAny]

    def post(self, request):
        result = self.create(request)
        if result.status_code == 201:
            username    = result.data['username']
            user        = MyUser.objects.get(username=username)
            token       = Token.objects.get(user=user)
            data = {
                "success": True,
                "username": username,
                "token": str(token),
            }
            return Response(data)
        else:
            return result


class LoginUserAPIView(GenericAPIView, RetrieveModelMixin):
    queryset = MyUser.objects.all()
    serializer_class = LoginUserSerializer
    permission_classes = [AllowAny]

    def post(self, request):
        return self.retrieve(request)
