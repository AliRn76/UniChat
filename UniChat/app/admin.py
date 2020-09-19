from django.contrib import admin

from .models import PvRoom, PublicRoom, PublicMember, PvMember, Message


class PvRoomAdmin(admin.ModelAdmin):
    list_display = ('get_users', 'id', 'date_created', 'last_message_date', 'is_deleted')
    search_fields = ('pvmember__user_id__username', 'pvmember__user_id__instagram', 'pvmember__user_id__telegram')
    readonly_fields = ('last_message_date',)

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

    def get_users(self, obj):
        users = PvMember.objects.filter(pv_room_id=obj.id)
        _users = []
        for i in range(len(users)):
            _users.append(users[i].user_id.username)
        return _users

    get_users.short_description = 'Users'
    '''order dorost kar nmikone, bayad distinct rosh ejra beshe'''
    # get_users.admin_order_field = 'pvmember__user_id__username'


class PublicRoomAdmin(admin.ModelAdmin):
    list_display = ('room_name', 'id', 'member_count', 'is_deleted')
    search_fields = ('room_name',)
    # readonly_fields = ('',)

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()


class PublicMemberAdmin(admin.ModelAdmin):
    list_display = ('get_room_name', 'id', 'get_username', 'unread_count', 'join_date')
    search_fields = ('public_room_id__room_name', 'user_id__username')
    readonly_fields = ('join_date', 'unread_count')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

    def get_room_name(self, obj):
        return obj.public_room_id.room_name

    get_room_name.short_description = 'Room Name'
    get_room_name.admin_order_field = 'public_room_id__room_name'

    def get_username(self, obj):
        return obj.user_id.username

    get_username.short_description = 'Username'
    get_username.admin_order_field = 'user_id__username'


class PvMemberAdmin(admin.ModelAdmin):
    list_display = ('get_first_username', 'get_second_username', 'id', 'unread_count', 'is_favorite')
    search_fields = ('user_id__username',)
    readonly_fields = ('unread_count',)

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

    def get_first_username(self, obj):
        return obj.user_id.username

    get_first_username.short_description = 'First User'
    get_first_username.admin_order_field = 'user_id__username'

    def get_second_username(self, obj):
        users = PvMember.objects.filter(pv_room_id=obj.pv_room_id)
        second_user = None
        for user in users:
            if user.user_id.username is not obj.user_id.username:
                second_user = user.user_id.username
        return second_user

    get_second_username.short_description = 'Second User'
    # get_second_username.admin_order_field = ''


class MessageAdmin(admin.ModelAdmin):
    list_display = ('get_user', 'id', 'text', 'image', 'get_other_side', 'date_added', 'date_modified', 'is_deleted')
    search_fields = ('user_id__username',)
    readonly_fields = ('date_added', 'date_modified')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

    def get_user(self, obj):
        return obj.user_id.username

    get_user.short_description = 'User'
    get_user.admin_order_field = 'user_id__username'

    def get_other_side(self, obj):
        if obj.pv_room_id is not None:
            users = PvMember.objects.filter(pv_room_id=obj.pv_room_id)
            second_user = None
            for user in users:
                if user.user_id.username is not obj.user_id.username:
                    second_user = user.user_id.username
            return second_user
        else:
            return obj.public_room_id.room_name

    get_other_side.short_description = 'Message To'
    get_other_side.admin_order_field = 'public_room_id__room_name'


admin.site.register(PvRoom, PvRoomAdmin)
admin.site.register(PublicRoom, PublicRoomAdmin)
admin.site.register(PublicMember, PublicMemberAdmin)
admin.site.register(PvMember, PvMemberAdmin)
admin.site.register(Message, MessageAdmin)
