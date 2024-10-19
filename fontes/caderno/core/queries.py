from core import models

# A chamada da API fica desa forma
# http://localhost:8000/api/caderno/usuario/obter_por_nome/?nome=Lula
# Caso não seja informado o parâmetro "nome", o código não quebra

def obter_por_nome(nome):
    queryset = models.Usuario.objects.filter(nome__icontains=nome)
    return queryset

