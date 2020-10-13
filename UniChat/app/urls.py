from django.urls import path, include

from app.api.views import test_ws
from app.views import robo_hash

urlpatterns = [
    path('api/', include('app.api.urls')),
    path('icons/<slug:slug>/', robo_hash, name='roboHash'),
    path('last/', test_ws),
]
