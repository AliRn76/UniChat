from django.urls import path

from app.api.views import MessageAPIView, roboHash

urlpatterns = [
    path('icon/<slug:slug>/', roboHash, name='roboHash'),
    path('messages/<int:id>/', MessageAPIView.as_view(), name='message'),
    path('messages/', MessageAPIView.as_view(), name='messages'),
]
