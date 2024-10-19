from rest_framework.routers import DefaultRouter
from core import viewsets

router = DefaultRouter()

router.register('usuario', viewset=viewsets.UsuarioViewset)
router.register('aula', viewset=viewsets.AulaViewset)
router.register('usuario_aula', viewset=viewsets.UsuarioAulaViewset)
router.register('comentario', viewset=viewsets.ComentarioViewset)
router.register('anexo_aula', viewset=viewsets.AnexoAulaViewset)
router.register('anexo_comentario', viewset=viewsets.AnexoComentarioViewset)

urlpatterns = router.urls

