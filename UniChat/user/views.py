
from rest_framework import generics
from rest_framework import mixins

from user.models import MyUser


# class MessageAPIView(generics.GenericAPIView, mixins.ListModelMixin, mixins.RetrieveModelMixin):
#     serializer_class = MessageSerializer
#     queryset = Message.objects.all()
#     lookup_field = 'id'
#
#     def get(self, request, id=None):
#         if id:
#             return self.retrieve(request)
#         else:
#             return self.list(request)