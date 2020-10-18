from django.db import models
from django.conf import settings
from django.db.models import Q
from rest_framework.exceptions import NotFound

from user.models import MyUser

User = settings.AUTH_USER_MODEL


class PublicRoom(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    member_count        = models.IntegerField(db_column='MemberCount', blank=True, null=True)
    room_name           = models.CharField(db_column='RoomName', max_length=127, blank=True, null=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    date_created        = models.DateTimeField(db_column='DateCreated', auto_now_add=True)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)

    class Meta:
        db_table = 'PublicRoom'


class PublicMember(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    unread_count        = models.IntegerField(db_column='UnreadCount', blank=True, null=True)
    date_joined         = models.DateTimeField(db_column='DateJoined', auto_now_add=True)
    is_admin            = models.BooleanField(db_column='IsAdmin', default=False)
    public_room_id      = models.ForeignKey(PublicRoom, models.DO_NOTHING, db_column='PublicRoomID', blank=True, null=True)
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID', blank=True, null=True)

    class Meta:
        db_table = 'PublicMember'

class PublicMessage(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    text                = models.TextField(db_column='Text', blank=True, null=True)
    date_added          = models.DateTimeField(db_column='DateAdded', auto_now_add=True)
    date_modified       = models.DateTimeField(db_column='DateModified', blank=True, null=True)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    image               = models.CharField(db_column='Image', max_length=255, blank=True, null=True)
    sum_scores          = models.IntegerField(db_column='SumScores', blank=True, null=True)
    is_reply            = models.BooleanField(db_column='IsReply', default=False)
    public_room_id      = models.ForeignKey(PublicRoom, models.DO_NOTHING, db_column='PublicRoomID', blank=True, null=True)
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')
    message_id          = models.ForeignKey('self', models.DO_NOTHING, db_column="MessageID", blank=True, null=True)

    class Meta:
        db_table = 'PublicMessage'


class PublicMessageScore(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    public_message_id   = models.ForeignKey(PublicMessage, models.DO_NOTHING, db_column="PublicMessageID")
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')
    score               = models.BooleanField(db_column="Score")

    class Meta:
        db_table = 'PublicMessageScore'









class PvMemberInfo(models.Model):
    id              = models.AutoField(db_column='ID', primary_key=True)
    is_blocked      = models.BooleanField(db_column='IsBlocked', default=False)
    is_favorite     = models.BooleanField(db_column='IsFavorite', default=False)
    is_deleted      = models.BooleanField(db_column='IsDeleted', default=False)
    unread_count    = models.IntegerField(db_column='UnreadCount', default=0)
    date_deleted    = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)

    class Meta:
        db_table = 'PVMember'


class PvRoom(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    date_created        = models.DateTimeField(db_column='DateCreated', auto_now_add=True)
    last_message_date   = models.DateTimeField(db_column='LastMessageDate', blank=True, null=True)
    user1_id            = models.ForeignKey(User, models.DO_NOTHING, related_name='user1_id', db_column='User1ID', blank=True, null=True)
    user2_id            = models.ForeignKey(User, models.DO_NOTHING, related_name='user2_id', db_column='User2ID', blank=True, null=True)
    user1_info          = models.ForeignKey(PvMemberInfo, models.DO_NOTHING, related_name='user1_info',  db_column='User1Info', blank=True, null=True)
    user2_info          = models.ForeignKey(PvMemberInfo, models.DO_NOTHING, related_name='user2_info',  db_column='User2Info', blank=True, null=True)

    class Meta:
        db_table = 'PVRoom'

    def pv_rooms(username):
        _rooms = PvRoom.objects.filter(Q(user2_id__username=username) | Q(user1_id__username=username))\
            .values_list('id')
        rooms = [i[0] for i in _rooms]
        return rooms


class PvMessage(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    text                = models.TextField(db_column='Text', blank=True, null=True)
    date_added          = models.DateTimeField(db_column='DateAdded', auto_now_add=True)
    date_modified       = models.DateTimeField(db_column='DateModified', blank=True, null=True)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    image               = models.CharField(db_column='Image', max_length=255, blank=True, null=True)
    liked_emoji         = models.IntegerField(db_column='LikedEmoji', blank=True, null=True)
    is_reply            = models.BooleanField(db_column='IsReply', default=False)
    pv_room_id          = models.ForeignKey(PvRoom, models.DO_NOTHING, db_column='PVRoomID', blank=True, null=True)
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')
    pv_message_id       = models.ForeignKey('self', models.DO_NOTHING, db_column="PvMessageID", blank=True, null=True)

    class Meta:
        db_table = 'PvMessage'










class FavoriteRoom(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    member_count        = models.IntegerField(db_column='MemberCount', blank=True, null=True)
    room_name           = models.CharField(db_column='RoomName', max_length=255, blank=True, null=True)
    field               = models.CharField(db_column='Field', max_length=255, blank=True, null=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    date_created        = models.DateTimeField(db_column='DateCreated', auto_now_add=True)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)

    class Meta:
        db_table = 'FavoriteRoom'


class FavoriteMember(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    unread_count        = models.IntegerField(db_column='UnreadCount', blank=True, null=True)
    date_joined         = models.DateTimeField(db_column='DateJoined', auto_now_add=True)
    favorite_room_id    = models.ForeignKey(FavoriteRoom, models.DO_NOTHING, db_column='FavoriteRoomID', blank=True, null=True)
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID', blank=True, null=True)

    class Meta:
        db_table = 'FavoriteMember'

class FavoriteMessage(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    text                = models.TextField(db_column='Text', blank=True, null=True)
    date_added          = models.DateTimeField(db_column='DateAdded', auto_now_add=True)
    date_modified       = models.DateTimeField(db_column='DateModified', blank=True, null=True)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    image               = models.CharField(db_column='Image', max_length=255, blank=True, null=True)
    sum_scores          = models.IntegerField(db_column='SumScores', blank=True, null=True)
    is_reply            = models.BooleanField(db_column='IsReply', default=False)
    favorite_room_id    = models.ForeignKey(FavoriteRoom, models.DO_NOTHING, db_column='FavoriteRoomID', blank=True, null=True)
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')
    message_id          = models.ForeignKey('self', models.DO_NOTHING, db_column="MessageID", blank=True, null=True)

    class Meta:
        db_table = 'FavoriteMessage'


class FavoriteMessageScore(models.Model):
    id                  = models.AutoField(db_column='ID', primary_key=True)
    score               = models.BooleanField(db_column="Score")
    favorite_message_id = models.ForeignKey(PublicMessage, models.DO_NOTHING, db_column="FavoriteMessageID")
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')

    class Meta:
        db_table = 'FavoriteMessageScore'





'''###################################### Utils #########################################'''


