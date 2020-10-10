from django.urls import path

from rest_framework.authtoken import views
from user.api.views import SignupUserAPIView, LoginUserAPIView

urlpatterns = [
    path('signup/', SignupUserAPIView.as_view()),
    path('login/', views.obtain_auth_token),
]
