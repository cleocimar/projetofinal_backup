from django.shortcuts import render
from rest_framework.authtoken.models import Token
from rest_framework.authtoken.views import ObtainAuthToken

# Create your views here.
# in views.py

from rest_framework.response import Response

class MyObtainToken(ObtainAuthToken):
    """Return User Info along with token"""

    def post(self, request, *arg, **kwarg):
        serializer = self.serializer_class(data=request.data, context={'request': request})
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        token, _ = Token.objects.get_or_create(user=user)
        return Response(
            {
                'username': user.username,
                'id': user.pk,
                'perfil': user.perfil,
                'token': token.key,
            })