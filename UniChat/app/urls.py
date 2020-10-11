from django.urls import path, include
from app.views import robo_hash

urlpatterns = [
    path('api/', include('app.api.urls')),
    path('icons/<slug:slug>/', robo_hash, name='roboHash'),
]
