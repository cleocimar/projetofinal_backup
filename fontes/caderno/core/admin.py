from django.contrib import admin

from core import models
from core.models import Usuario, Aula, Comentario, UsuarioAula, AnexoAula, AnexoComentario


# Register your models here.

@admin.register(models.Usuario)
class Usuario(admin.ModelAdmin):
    list_display = ['id', 'nome', 'apelido', 'password', 'perfil']
    list_display_links = ['id', 'nome', 'apelido', 'password', 'perfil']


@admin.register(models.Aula)
class Aula(admin.ModelAdmin):
    list_display = ['id', 'instituicao', 'data_aula', 'disciplina', 'conteudo']
    list_display_links = ['id', 'instituicao', 'data_aula', 'disciplina', 'conteudo']


@admin.register(models.UsuarioAula)
class UsuarioAula(admin.ModelAdmin):
    list_display = ['id']
    list_display_links = ['id']


@admin.register(models.Comentario)
class Comentario(admin.ModelAdmin):
    list_display = ['id', 'data_comentario', 'texto', 'tipo']
    list_display_links = ['id', 'data_comentario', 'texto', 'tipo']


@admin.register(models.AnexoComentario)
class AnexoComentario(admin.ModelAdmin):
    list_display = ['id', 'nome', 'tipo', 'extensao', 'caminho_anexo']
    list_display_links = ['id', 'nome', 'tipo', 'extensao', 'caminho_anexo']


@admin.register(models.AnexoAula)
class AnexoAula(admin.ModelAdmin):
    list_display = ['id', 'nome', 'tipo', 'extensao', 'caminho_anexo']
    list_display_links = ['id', 'nome', 'tipo', 'extensao', 'caminho_anexo']
