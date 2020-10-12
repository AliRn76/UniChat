from django.db import models
from django.conf import settings
from django.db.models import Q
from rest_framework.exceptions import NotFound

from user.models import MyUser

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
    is_admin            = models.BooleanField(db_column='IsAdmin', default=False)
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
    pv_room_id          = models.ForeignKey(PvRoom, models.DO_NOTHING, db_column='PVRoomID', blank=True, null=True)
    public_room_id      = models.ForeignKey(PublicRoom, models.DO_NOTHING, db_column='PublicRoomID', blank=True, null=True)
    user_id             = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')
    message_id          = models.ForeignKey('self', models.DO_NOTHING, db_column="MessageID", blank=True, null=True)
    text                = models.TextField(db_column='Text', blank=True, null=True)
    date_added          = models.DateTimeField(db_column='DateAdded', auto_now_add=True)
    date_modified       = models.DateTimeField(db_column='DateModified', blank=True, null=True)
    date_deleted        = models.DateTimeField(db_column='DateDeleted', blank=True, null=True)
    is_deleted          = models.BooleanField(db_column='IsDeleted', default=False)
    image               = models.CharField(db_column='Image', max_length=255, blank=True, null=True)
    sum_scores          = models.IntegerField(db_column='SumScores', blank=True, null=True)

    class Meta:
        db_table = 'Message'


class Score(models.Model):
    id              = models.AutoField(db_column='ID', primary_key=True)
    message_id      = models.ForeignKey(Message, models.DO_NOTHING, db_column="MessageID")
    user_id         = models.ForeignKey(User, models.DO_NOTHING, db_column='UserID')
    score           = models.BooleanField(db_column="Score")



'''###################################### Utils #########################################'''

def get_pv_rooms(username):
    try:
        MyUser.objects.get(username=username)
    except MyUser.DoesNotExist:
        raise NotFound('Username Does Not Exist')
    _rooms = PvMember.objects.filter(user_id__username=username).values_list('pv_room_id__id')
    rooms = [i[0] for i in _rooms]
    ''' return [room_id, room_id , ...] '''
    return rooms

def get_pv_names(username):
    rooms = get_pv_rooms(username)
    _pv_names = PvMember.objects.filter(Q(pv_room_id__id__in=rooms) & ~Q(user_id__username=username))\
        .values_list('user_id__first_name', 'user_id__last_name', 'user_id__profile_picture', 'pv_room_id__id')
    ''' return [('first_name', 'last_name', 'profile_picture', 'room_id'), ...] '''
    return _pv_names

def get_pv_last_message(username):
    rooms = get_pv_rooms(username)
    _pv_last_message = Message.objects.filter(Q(is_deleted=False) & Q(pv_room_id__in=rooms))\
        .values_list('text', 'pv_room_id', 'date_added').order_by('pv_room_id', '-date_added')
    last_room = None
    pv_last_message = []
    for i in _pv_last_message:
        if last_room != i[1]:
            last_room = i[1]
            pv_last_message.append(i)
    ''' return [('last_message', room_id), ...] '''
    return pv_last_message
