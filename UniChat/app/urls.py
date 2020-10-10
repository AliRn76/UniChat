from django.urls import path, include
from app.views import api_view

urlpatterns = [
    path('', api_view, name='api_view'),
    path('api/', include('app.api.urls')),
]
