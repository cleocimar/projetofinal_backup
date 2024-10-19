from django_filters import filterset
from core import models
from core.models import Usuario, Aula, Comentario

# [ModelChoiceFilter] usado para filtrar um FK

class UsuarioFilter(filterset.FilterSet):
    nome = filterset.CharFilter(lookup_expr='icontains')
    perfil = filterset.ChoiceFilter(choices=models.Usuario.Perfil)
    apelido = filterset.CharFilter(lookup_expr='icontains')

    class Meta:
        model = models.Usuario
        fields = ('nome', 'perfil', 'apelido', )

class AulaFilter(filterset.FilterSet):
    
    instituicao = filterset.CharFilter(lookup_expr='icontains')
    data_aula = filterset.CharFilter(lookup_expr='icontains')
    disciplina = filterset.CharFilter(lookup_expr='icontains')
    conteudo = filterset.CharFilter(lookup_expr='icontains')

    class Meta:
        model = models.Aula
        fields = ('instituicao', 'disciplina', 'conteudo', 'data_aula', )

class UsuarioAulaFilter(filterset.FilterSet):
    
    usuario = filterset.ModelChoiceFilter(queryset=Usuario.objects.all())   
    aula = filterset.ModelChoiceFilter(queryset=Aula.objects.all())   

    class Meta:
        model = models.UsuarioAula
        fields = ('usuario', 'aula', )

class ComentarioFilter(filterset.FilterSet):

    texto = filterset.CharFilter(lookup_expr='icontains')
    data_comentario = filterset.CharFilter(lookup_expr='icontains')
    aula = filterset.ModelChoiceFilter(queryset=Aula.objects.all())   
    usuario = filterset.ModelChoiceFilter(queryset=Usuario.objects.all())   

    class Meta:
        model = models.Comentario
        fields = ('texto', 'data_comentario', 'aula', 'usuario', )

class AnexoAulaFilter(filterset.FilterSet):

    nome = filterset.CharFilter(lookup_expr='icontains')
    tipo = filterset.CharFilter(lookup_expr='icontains')
    extensao = filterset.CharFilter(lookup_expr='icontains')
    aula = filterset.ModelChoiceFilter(queryset=Aula.objects.all())   

    class Meta:
        model = models.AnexoAula
        fields = ('nome', 'tipo', 'extensao', 'aula', )


class AnexoComentarioFilter(filterset.FilterSet):

    nome = filterset.CharFilter(lookup_expr='icontains')
    tipo = filterset.CharFilter(lookup_expr='icontains')
    extensao = filterset.CharFilter(lookup_expr='icontains')
    comentario = filterset.ModelChoiceFilter(queryset=Comentario.objects.all())

    class Meta:
        model = models.AnexoComentario
        fields = ('nome', 'tipo', 'extensao', 'comentario', )

