from django.db import models
from django.conf import settings


User = settings.AUTH_USER_MODEL


class PvRoom(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    date_created        = models.DateTimeField(db_column='DateCreated', auto_now_add=True)
    last_message_date   = models.DateTimeField(db_column='LastMessageDate', blank=True, null=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)

    class Meta:
        db_table = 'PVRoom'


class PublicRoom(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    member_count        = models.IntegerField(db_column='MemberCount', blank=True, null=True)
    room_name           = models.CharField(db_column='RoomName', max_length=127, blank=True, null=True)
    admin_id            = models.ForeignKey(User, models.DO_NOTHING, db_column='AdminID', blank=True, null=True)
    date_created        = models.DateTimeField(db_column='DateCreated', auto_now_add=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)

    class Meta:
        db_table = 'PublicRoom'


class PublicMember(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    public_room_id      = models.ForeignKey(PublicRoom, models.DO_NOTHING, db_column='PublicRoomID', blank=True, null=True)
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID', blank=True, null=True)
    unread_count        = models.IntegerField(db_column='UnreadCount', blank=True, null=True)
    join_date           = models.DateTimeField(db_column='JoinDate', auto_now_add=True)

    class Meta:
        db_table = 'PublicMember'


class PvMember(models.Model):
    id              = models.AutoField(db_column='ID', primary_key=True)
    pv_room_id      = models.ForeignKey(PvRoom, models.DO_NOTHING, db_column='PVRoomID')
    user_id         = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')
    is_blocked      = models.BooleanField(db_column='IsBlocked', default=False)
    is_favorite     = models.BooleanField(db_column='IsFavorite', default=False)
    unread_count    = models.IntegerField(db_column='UnreadCount', default=0)

    class Meta:
        db_table = 'PVMember'


class Message(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    text                = models.TextField(db_column='Text', blank=True, null=True)
    date_added          = models.DateTimeField(db_column='DateAdded', auto_now_add=True)
    date_modified       = models.DateTimeField(db_column='DateModified', blank=True, null=True)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    image               = models.CharField(db_column='Image', max_length=255, blank=True, null=True)
    pv_room_id          = models.ForeignKey(PvRoom, models.DO_NOTHING, db_column='PVRoomID', blank=True, null=True)
    public_room_id      = models.ForeignKey(PublicRoom, models.DO_NOTHING, db_column='PublicRoomID', blank=True, null=True)
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')

    class Meta:
        db_table = 'Message'




















