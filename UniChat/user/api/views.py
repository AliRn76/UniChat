
from rest_framework.mixins import CreateModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.generics import GenericAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.response import Response

from rest_framework.authtoken.models import Token
from user.api.serializers import SignupUserSerializer, ProfileSerializer
from user.models import MyUser


class SignupUserAPIView(GenericAPIView, CreateModelMixin):
    queryset            = MyUser.objects.all()
    serializer_class    = SignupUserSerializer
    permission_classes  = [AllowAny]

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


class ProfileAPIView(GenericAPIView, RetrieveModelMixin, UpdateModelMixin):
    queryset            = MyUser.objects.all()
    serializer_class    = ProfileSerializer
    permission_classes  = [IsAuthenticated]
    lookup_field        = 'username'

    def get(self, request, username):
        # if username is not None:
        result = self.detail(request)
        if result.status_code == 200:
            data = {"success": True}
            data.update(result.data)
            return Response(data)
        else:
            data = {
                "success": False,
                "error": result.exception
            }
            return Response(data=data, status=result.status_code)

    ''' 
    Profile_Picture + Background_Image ro az inja upload mikonm 
    def post(self, username):
        pass
    '''

    def put(self, request, username):
        result = self.update(request, username)
        if result.status_code == 200:
            data = {"success": True}
            data.update(result.data)
            return Response(data)
        else:
            data = {
                "success": False,
                "error": result.exception
            }
            return Response(data=data, status=result.status_code)


#TODO: IsDeleted ro barashon hesab konm
#TODO: baraye User ha field e isDeleted bzaram