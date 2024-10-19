from rest_flex_fields import FlexFieldsModelSerializer
from rest_framework import serializers
from core import models

class UsuarioModelSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = models.Usuario
        fields = '__all__'

class AulaModelSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = models.Aula
        fields = '__all__'

class UsuarioAulaModelSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = models.UsuarioAula
        fields = '__all__'
        expandable_fields = {
            'usuario': ('core.UsuarioModelSerializer'),
            'aula': ('core.AulaModelSerializer'),
        }

class ComentarioModelSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = models.Comentario
        fields = '__all__'
        expandable_fields = {
            'aula': ('core.AulaModelSerializer'),
            'usuario': ('core.UsuarioModelSerializer'),
        }

class AnexoAulaModelSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = models.AnexoAula
        fields = '__all__'
        expandable_fields = {
            'aula': ('core.AulaModelSerializer'),
        }

class AnexoComentarioModelSerializer(FlexFieldsModelSerializer):
    class Meta:
        model = models.AnexoComentario
        fields = '__all__'
        expandable_fields = {
            'comentario': ('core.ComentarioModelSerializer'),
        }

