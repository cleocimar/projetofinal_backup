from rest_framework import serializers

# Essa opção não é necessária se usar Filter
class UsuarioObterPorNomeSerializersParams(serializers.Serializer):
    nome = serializers.CharField(required=True)

    
