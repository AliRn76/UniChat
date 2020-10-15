from channels.routing import ProtocolTypeRouter, URLRouter
from django.conf.urls import url
from django.urls import path
from channels.auth import AuthMiddlewareStack
from channels.security.websocket import AllowedHostsOriginValidator

from app.consumers import MoistureSensorConsumer

application = ProtocolTypeRouter({
    'websocket': AllowedHostsOriginValidator(
        AuthMiddlewareStack(
            URLRouter(
                [
                    url(r"^pv_room/(?P<username>[\w.@+-]+)/$", MoistureSensorConsumer),
                ]
            )
        )
    )
})
