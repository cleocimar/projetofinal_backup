from django.contrib.auth.base_user import BaseUserManager
from django.utils import timezone


class UserManager(BaseUserManager):
    def _create_user(self, username, password, is_superuser, **extra_fields):
        now = timezone.now()
        if not username:
            raise ValueError('Usuário não informado')
        user = self.model(username=username,
                          is_superuser=is_superuser,
                          last_login=now,
                          **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, username, password=None, **extra_fields):
        return self._create_user(username, password, False, **extra_fields)

    def create_superuser(self, username, password, **extra_fields):
        user = self._create_user(username, password, True, **extra_fields)
        user.save(using=self._db)
        return user