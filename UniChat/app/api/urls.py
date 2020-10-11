from django.urls import path

from app.views import api_view
from app.api.views import MessageAPIView, PvRoomsAPIVIew

urlpatterns = [
    path('', api_view, name='api_view'),
    path('messages/<int:id>/', MessageAPIView.as_view(), name='message'),
    path('messages/', MessageAPIView.as_view(), name='messages'),
    path('pv_rooms/<str:username>', PvRoomsAPIVIew.as_view(), name='pvrooms'),
]
