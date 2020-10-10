from django.utils import timezone
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser
from django.db import models
from django.conf import settings
from django.db.models.signals import post_save
from django.dispatch import receiver
from rest_framework.authtoken.models import Token


# def update_last_login(sender, user, **kwargs):
#     """
#     A signal receiver which updates the last_login date for
#     the user logging in.
#     """
#     user.last_login = timezone.now()
#     user.save(update_fields=['last_login'])


class MyUserManager(BaseUserManager):
    def create_user(self, username, password=None):
        if not username:
            raise ValueError('Users must have a username')

        user = self.model(
            username=username,
        )

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username, password=None):
        user = self.create_user(
            username,
            password=password,
        )
        user.is_admin = True
        user.save(using=self._db)
        return user


class MyUser(AbstractBaseUser):
    username            = models.CharField(max_length=150, unique=True)
    password            = models.CharField(max_length=128)
    first_name          = models.CharField(max_length=30, blank=True, null=True)
    last_name           = models.CharField(max_length=150, blank=True, null=True)
    is_admin            = models.BooleanField(default=False)
    is_active           = models.BooleanField(default=True)
    date_joined         = models.DateTimeField(auto_now_add=True)
    last_login          = models.DateTimeField(blank=True, null=True)
    is_male             = models.BooleanField(blank=True, null=True)
    profile_picture     = models.ImageField(upload_to='profile_pictures/', max_length=255, blank=True, null=True)
    email               = models.EmailField(verbose_name='email address', max_length=255, blank=True, null=True)
    instagram           = models.CharField(max_length=150, blank=True, null=True)
    telegram            = models.CharField(max_length=150, blank=True, null=True)
    bio                 = models.CharField(max_length=256, blank=True, null=True)
    relationship        = models.BooleanField(blank=True, null=True)
    phone_number        = models.CharField(max_length=32, blank=True, null=True)
    birth_date          = models.DateField(blank=True, null=True)
    country             = models.CharField(max_length=256, blank=True, null=True)
    city                = models.CharField(max_length=256, blank=True, null=True)
    university          = models.CharField(max_length=256, blank=True, null=True)
    field               = models.CharField(max_length=256, blank=True, null=True)
    entrance_year       = models.IntegerField(blank=True, null=True)
    job                 = models.CharField(max_length=255, blank=True, null=True)
    favorite_sport      = models.CharField(max_length=255, blank=True, null=True)
    favorite_book       = models.CharField(max_length=255, blank=True, null=True)
    favorite_movie      = models.CharField(max_length=255, blank=True, null=True)
    favorite_tv_series  = models.CharField(max_length=255, blank=True, null=True)
    favorite_game       = models.CharField(max_length=255, blank=True, null=True)
    favorite_to_travel  = models.CharField(max_length=255, blank=True, null=True)
    favorite_music      = models.CharField(max_length=255, blank=True, null=True)
    background_color    = models.CharField(max_length=255, blank=True, null=True)
    font_color          = models.CharField(max_length=255, blank=True, null=True)
    background_image    = models.ImageField(upload_to='background_images/', max_length=255, blank=True, null=True)
    background_opacity  = models.IntegerField(blank=True, null=True)

    objects = MyUserManager()

    USERNAME_FIELD = 'username'

    def __str__(self):
        return self.username

    def has_perm(self, perm, obj=None):
        "Does the user have a specific permission?"
        # Simplest possible answer: Yes, always
        return True

    def has_module_perms(self, app_label):
        "Does the user have permissions to view the app `app_label`?"
        # Simplest possible answer: Yes, always
        return True

    @property
    def is_staff(self):
        "Is the user a member of staff?"
        # Simplest possible answer: All admins are staff
        return self.is_admin

    class Meta:
        db_table = 'auth_user'



@receiver(post_save, sender=settings.AUTH_USER_MODEL)
def create_auth_token(sender, instance=None, created=False, **kwargs):
    if created:
        Token.objects.create(user=instance)