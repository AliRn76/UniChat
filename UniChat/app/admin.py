from django.contrib import admin
from django.db.models import Q

from .models import PvRoom, PublicRoom, PublicMember, Message, PvMemberInfo


class PvRoomAdmin(admin.ModelAdmin):
    list_display = ('user1_id', 'user2_id', 'id', 'date_created', 'last_message_date')
    search_fields = ('pvmember__user_id__username', 'pvmember__user_id__instagram', 'pvmember__user_id__telegram')
    readonly_fields = ('last_message_date',)

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()


class PvMemberInfoAdmin(admin.ModelAdmin):
    list_display = ('get_username', 'get_room_id', 'id', 'is_blocked', 'is_favorite', 'is_deleted', 'unread_count')
    search_fields = ('user1_info__user1_id__username', 'user2_info__user2_id__username')
    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()
    
    def get_username(self, obj):
        try:
            username = PvRoom.objects.get(user1_info=obj.id).user1_id.username
        except:
            username = PvRoom.objects.get(user2_info=obj.id).user2_id.username
        return username

    def get_room_id(self, obj):
        return PvRoom.objects.get(Q(user1_info=obj.id) | Q(user2_info=obj.id)).id

    get_username.short_description = 'Username'

    get_room_id.short_description = 'Room ID'


class PublicRoomAdmin(admin.ModelAdmin):
    list_display = ('room_name', 'id', 'member_count', 'is_deleted')
    search_fields = ('room_name',)

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

    def get_username(self, obj):
        return obj.user_id.username

    get_room_name.short_description = 'Room Name'
    get_room_name.admin_order_field = 'public_room_id__room_name'

    get_username.short_description = 'Username'
    get_username.admin_order_field = 'user_id__username'


class MessageAdmin(admin.ModelAdmin):
    list_display = ('get_user', 'id', 'text', 'image', 'get_pv_id', 'get_public_id', 'date_added', 'date_modified', 'is_deleted')
    search_fields = ('user_id__username',)
    readonly_fields = ('date_added', 'date_modified')

    filter_horizontal = ()
    list_filter = ()
    fieldsets = ()

    def get_user(self, obj):
        return obj.user_id.username

    def get_pv_id(self, obj):
        return obj.pv_room_id.id

    def get_public_id(self, obj):
        try:
            return obj.public_room_id.id
        except:
            return None

    get_user.short_description = 'User'
    get_user.admin_order_field = 'user_id__username'

    get_pv_id.short_description = 'PV Room ID'
    get_pv_id.admin_order_field = 'pv_room_id__id'

    get_public_id.short_description = 'Public Room ID'
    get_public_id.admin_order_field = 'public_room_id__id'


admin.site.register(PvRoom, PvRoomAdmin)
admin.site.register(PublicRoom, PublicRoomAdmin)
admin.site.register(PublicMember, PublicMemberAdmin)
admin.site.register(PvMemberInfo, PvMemberInfoAdmin)
admin.site.register(Message, MessageAdmin)
