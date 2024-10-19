from django.db import models

# Create your models here.

class ModeBase(models.Model):
    id = models.AutoField(primary_key=True)
    created_at = models.DateTimeField(auto_now_add=True, null=False)
    modified_at = models.DateTimeField(auto_now=True, null=False)
    active = models.BooleanField(default=True, null=False)

    class Meta:
        managed = True
        abstract = True

class Usuario(ModeBase):

    class Perfil(models.TextChoices):
        Instrutor = 'I', 'Instrutor'
        Participante = 'P', 'Participante'

    email = models.CharField(max_length=40, null=False)
    nome = models.CharField(max_length=100, null=True)
    apelido = models.CharField(max_length=20, null=False)
    senha = models.CharField(max_length=20, null=False)
    perfil = models.CharField(max_length=1, choices=Perfil, blank=False,null=False)

    def __str__(self):
        return self.nome

    class Meta:
        db_table = 'usuario'

class Aula(ModeBase):
    instituicao = models.CharField(max_length=100, null=False)
    data_aula = models.DateField(null=False)
    disciplina = models.CharField(max_length=40, null=False)
    conteudo = models.TextField(null=False)

    def __str__(self):
        return self.conteudo

    class Meta:
        db_table = 'aula'

class UsuarioAula(ModeBase):

    usuario = models.ForeignKey(
        to='Usuario',
        on_delete=models.DO_NOTHING,
        db_column='id_usuario',
        null=False
    )

    aula = models.ForeignKey(
        to='Aula',
        on_delete=models.DO_NOTHING,
        db_column='id_aula',
        null=False
    )

    def __str__(self):
        return str(self.id)

    class Meta:
        db_table = 'usuario_aula'

class Comentario(ModeBase):

    class Tipo(models.TextChoices):
        Propria = 'P', 'Propria'
        Opiniao = 'O', 'Opiniao'

    data_comentario = models.DateField(null=False)
    texto = models.TextField(null=False)
    tipo = models.CharField(max_length=1, choices=Tipo, blank=False, null=False)

    aula = models.ForeignKey(
        to='Aula',
        on_delete=models.DO_NOTHING,
        db_column='id_aula',
        null=False
    )

    usuario = models.ForeignKey(
        to='Usuario',
        on_delete=models.DO_NOTHING,
        db_column='id_usuario',
        null=False
    )

    def __str__(self):
        return self.texto

    class Meta:
         db_table = 'comentario'

class AnexoAula(ModeBase):

    class Tipo(models.TextChoices):
        Arquivo = 'A', 'Arquivo'
        Foto = 'F', 'Foto'
        Audio = 'S', 'Audio'

    class Extensao(models.TextChoices):
        PDF = 'P', 'PDF'
        JPG = 'J', 'JPG'
        WAV = 'W', 'WAVE'

    nome = models.CharField(max_length=40, null=False)
    tipo = models.CharField(max_length=1, choices=Tipo,blank=False, null=False)
    extensao = models.CharField(max_length=3, choices=Extensao,blank=False, null=True)
    caminho_anexo = models.CharField(max_length=100, null=False)

    aula = models.ForeignKey(
        to='Aula',
        on_delete=models.DO_NOTHING,
        db_column='id_aula',
        null=False
    )

    def __str__(self):
        return self.nome +'.' + self.extensao + ' - Tipo(' + self.tipo +')'

    class Meta:
        db_table = 'anexo_aula'

class AnexoComentario(ModeBase):

    class Tipo(models.TextChoices):
        Arquivo = 'A', 'Arquivo'
        Foto = 'F', 'Foto'
        Audio = 'S', 'Audio'

    class Extensao(models.TextChoices):
        PDF = 'P', 'PDF'
        JPG = 'J', 'JPG'
        WAV = 'W', 'WAVE'

    nome = models.CharField(max_length=40, null=False)
    tipo = models.CharField(max_length=1, choices=Tipo,blank=False, null=False)
    extensao = models.CharField(max_length=3, choices=Extensao,blank=False, null=True)
    caminho_anexo = models.CharField(max_length=100, null=False)

    comentario = models.ForeignKey(
        to='Comentario',
        on_delete=models.DO_NOTHING,
        db_column='id_comentario',
        null=False
    )

    def __str__(self):
        return self.nome +'.' + self.extensao + ' - Tipo(' + self.tipo +')'

    class Meta:
        db_table = 'anexo_comentario'

        