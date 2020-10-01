from django.contrib import admin
from django.urls import path, include

from .views import MessageAPIView, roboHash

urlpatterns = [
    path('admin/', admin.site.urls),
    path('icon/<slug:slug>/', roboHash, name='roboHash'),
    path('messages/<int:id>/', MessageAPIView.as_view(), name='message'),
    path('messages/', MessageAPIView.as_view(), name='messages'),
]
