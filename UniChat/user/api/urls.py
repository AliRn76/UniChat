from django.urls import path

from rest_framework.authtoken import views
from user.api.views import SignupUserAPIView, ProfileAPIView

urlpatterns = [
    path('signup/', SignupUserAPIView.as_view()),
    path('login/', views.obtain_auth_token),
    path('profile/', ProfileAPIView.as_view()),
    path('profile/<str:username>', ProfileAPIView.as_view()),
]
