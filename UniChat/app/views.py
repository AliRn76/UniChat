from django.shortcuts import render, HttpResponse
from rest_framework import generics
from rest_framework import mixins
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from robohash import Robohash

from .models import Message
from .serializers import MessageSerializer


def roboHash(request, slug):
    set = request.GET.get('set', None)
    hash = slug
    rh = Robohash(hash)
    rh.assemble(roboset="set" + set)
    with open("file.png", "wb") as f:
        rh.img.save(f, format="png")
    image_data = open("file.png", "rb").read()
    return HttpResponse(image_data  , content_type="image/png")

    # def my_image(request):
    #     image_data = open("/path/to/my/image.png", "rb").read()
    #     return HttpResponse(image_data, mimetype="image/png")

class MessageAPIView(generics.GenericAPIView, mixins.ListModelMixin, mixins.RetrieveModelMixin):
    serializer_class = MessageSerializer
    queryset = Message.objects.all()
    lookup_field = 'id'

    def get(self, request, id=None):
        if id:
            return self.retrieve(request)
        else:
            return self.list(request)
        # messages = Message.objects.all()
        # serializer = MessageSerializer(messages, many=True)
        # return Response(serializer.data, status=status.HTTP_200_OK)


