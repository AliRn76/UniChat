from django.contrib import admin
from django.contrib.auth.admin import UserAdmin

from .models import MyUser


class MyUserAdmin(UserAdmin):
    list_display = ('username', 'first_name', 'last_name', 'is_admin', 'date_joined', 'last_login')
    search_fields = ('username', 'instagram', 'telegram', 'bio')
    readonly_fields = ('date_joined', 'last_login')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()


admin.site.register(MyUser, MyUserAdmin)
