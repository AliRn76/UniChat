
from rest_framework.mixins import CreateModelMixin, RetrieveModelMixin, UpdateModelMixin, ListModelMixin
from rest_framework.generics import GenericAPIView
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.response import Response
from rest_framework import status
from rest_framework.authtoken.models import Token
from user.api.serializers import SignupUserSerializer, ProfileSerializer
from user.models import MyUser
from robohash import Robohash

class SignupUserAPIView(GenericAPIView, CreateModelMixin):
    queryset            = MyUser.objects.all()
    serializer_class    = SignupUserSerializer
    permission_classes  = [AllowAny]

    def post(self, request):
        result = self.create(request)
        if result.status_code == 201:
            username                = result.data['username']
            user                    = MyUser.objects.get(username=username)
            is_male                 = user.is_male
            profile_icon            = self.create_profile_icon(username, is_male)
            user.profile_picture    = profile_icon
            token                   = Token.objects.get(user=user)
            user.save()
            data = {
                "success": True,
                "token": str(token),
            }
            return Response(data)
        else:
            return result

    def create_profile_icon(self, username, is_male):
        rh = Robohash(username)
        if is_male:
            set = '1'
        else:
            set = '4'
        rh.assemble(roboset="set" + set)
        image_url = "media/profiles-icon/" + username + ".png"
        try:
            image_data = open(image_url, "rb").read()
        except:
            with open(image_url, "wb") as icon:
                rh.img.save(icon, format="png")
        final_url = "profiles-icon/" + username + ".png"
        return final_url


class ProfileAPIView(GenericAPIView, RetrieveModelMixin, UpdateModelMixin, ListModelMixin):
    serializer_class    = ProfileSerializer
    permission_classes  = [IsAuthenticated]
    queryset            = MyUser.objects.all()
    lookup_field        = 'username'

    def get(self, request, username=None):
        if username is not None:
            return self.retrieve(request)

        else:
            obj = MyUser.objects.get(auth_token=request.auth)
            serializer = ProfileSerializer(obj)
            return Response(data=serializer.data, status=status.HTTP_200_OK)

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

class OtherProfileAPIView(GenericAPIView, RetrieveModelMixin, UpdateModelMixin):
    queryset            = MyUser.objects.all()
    serializer_class    = ProfileSerializer
    permission_classes  = [IsAuthenticated]
    lookup_field        = 'username'

    def get(self, request, username):
        # if username is not None:
        result = self.retrieve(request)
        if result.status_code == 200:
            data = {"success": True}
            data.update(result.data)
            return Response(data)
        else:
            data = {"success": False, "error": result.exception}
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
#TODO: age user Exist bood , error 403 bede(bayad queryset def beshe)