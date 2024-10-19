from rest_framework import viewsets
from rest_framework.decorators import action
from core import models,serializers, queries, serializers_params, filters

class UsuarioViewset(viewsets.ModelViewSet):
    queryset = models.Usuario.objects.all()
    serializer_class = serializers.UsuarioModelSerializer
    filterset_class = filters.UsuarioFilter

class AulaViewset(viewsets.ModelViewSet):
    queryset = models.Aula.objects.all()
    serializer_class = serializers.AulaModelSerializer
    filterset_class = filters.AulaFilter

class UsuarioAulaViewset(viewsets.ModelViewSet):
    queryset = models.UsuarioAula.objects.all()
    serializer_class = serializers.UsuarioAulaModelSerializer
    filterset_class = filters.UsuarioAulaFilter

class ComentarioViewset(viewsets.ModelViewSet):
    queryset = models.Comentario.objects.all()
    serializer_class = serializers.ComentarioModelSerializer
    filterset_class = filters.ComentarioFilter

class AnexoAulaViewset(viewsets.ModelViewSet):
    queryset = models.AnexoAula.objects.all()
    serializer_class = serializers.AnexoAulaModelSerializer
    filterset_class = filters.AnexoAulaFilter

class AnexoComentarioViewset(viewsets.ModelViewSet):
    queryset = models.AnexoComentario.objects.all()
    serializer_class = serializers.AnexoComentarioModelSerializer
    filterset_class = filters.AnexoComentarioFilter


