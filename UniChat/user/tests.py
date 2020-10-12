from django.test import TestCase

from user.models import MyUser


class UserTestCase(TestCase):

    def setUp(self):
        user_a = MyUser()

    def test_user_exists(self):
        user_count = MyUser.objects.all().count()
        print(user_count)
        self.assertEqual(user_count, 1)
        self.assertEqual(user_count, 0)

    def test_user_password(self):
        user_qs = MyUser.objects.filter(username__iexact="ali")
        user_exists = user_qs.exists() and user_qs.count() == 1
        self.assertTrue(user_exists)