-- Active: 1728143183557@@127.0.0.1@5433@caderno
/* Visualização de comentários e opiniões de Instrutor e Usuarios em uma Aula juntamente com seus Anexos */
select coalesce( c.id, 0 ) as id_comentario,
       case when coalesce( c.tipo,'')='P' then 'próprio'
            when coalesce( c.tipo,'')='O' then 'opinão' else 'não identificado' end as tipo_comentario,
       coalesce( u.apelido, '') as apelido,
       coalesce( u.nome   , '') as nome,
       coalesce( c.texto, '' ) as texto,
       coalesce( ac.id, 0  ) as anexo_id,
       coalesce( ac.tipo    , '' ) as codigo_tipo,
       coalesce( ac.extensao, '' ) as codigo_extensao,
       case when coalesce( ac.tipo,'')='A' then 'Arquivo'
            when coalesce( ac.tipo,'')='F' then 'Foto'
            when coalesce( ac.tipo,'')='S' then 'Audio' else 'não identificado'
           end as anexo_descricao,
       case when coalesce( ac.extensao,'')='J' then 'JPG'
            when coalesce( ac.extensao,'')='W' then 'WAVE'
            when coalesce( ac.extensao,'')='P' then 'PDF' else 'não identificado'
           end as extensao,
       coalesce( ac.nome         , '' ) as nome_anexo,
       coalesce( ac.caminho_anexo, '' ) as caminho_anexo
from comentario c
inner join aula a on a.id=c.id_aula
inner join usuario u on u.id=c.id_usuario
left join anexo_comentario ac on ac.id_comentario=c.id
where c.id in (1,2,3,4,5,6)
order by c.id, u.perfil;





/* Aulas com seus Usuarios */
select /* Aula */
       coalesce( a.id         , 0   ) as id_aula,
       coalesce( a.data_aula  , null) as data_aula,
       coalesce( a.instituicao, ''  ) as instituicao,
       coalesce( a.disciplina , ''  ) as disciplina,
       coalesce( a.conteudo   , ''  ) as conteudo,
       /* Usuario */
       coalesce( u.id    , 0  ) as id_usuario,
       coalesce( u.perfil, '' ) as perfil_sigla,
       case when coalesce( u.perfil,'')='I' then 'Instrutor'
            when coalesce( u.perfil,'')='P' then 'Usuario' else 'não identificado'
       end as perfil_descricao,
       u.is_superuser,
       u.is_staff,
       coalesce( u.nome   , '' ) as nome_participante,
       coalesce( u.apelido, '' ) as apelido
from usuario_aula ua
left join aula a on a.id=ua.id_aula
left join usuario u on u.id=ua.id_usuario
where a.id in (1,2,3,4)
order by coalesce( a.id, 0 ), coalesce( u.perfil, '' );




/* consultas simples */
select * from usuario;
select * from aula;
select * from anexo_aula;
select * from usuario_aula;
select * from comentario;
select * from anexo_comentario;




/* Aula e seus Anexos */
select /* Salas de Aula */
       coalesce( a.id          , 0    ) as id_aula,
       coalesce( a.data_aula   , null ) as data_aula,
       coalesce( a.instituicao , ''   ) as instituicao,
       coalesce( a.disciplina  , ''   ) as disciplina,
       coalesce( a.conteudo    , ''   ) as conteudo,
       /* Anexos */
       coalesce( aa.id           , 0  ) as id_anexo,
       coalesce( aa.nome         , '' ) as nome_anexo,
       coalesce( aa.tipo         , '' ) as codigo_tipo,
       coalesce( aa.extensao     , '' ) as codigo_extensao,
       case when coalesce( aa.tipo,'')='A' then 'Arquivo'
            when coalesce( aa.tipo,'')='F' then 'Foto'
            when coalesce( aa.tipo,'')='S' then 'Audio' else 'não identificado'
           end as anexo_tipo,
       case when coalesce( aa.extensao,'')='P' then 'PDF'
            when coalesce( aa.extensao,'')='J' then 'JPG'
            when coalesce( aa.extensao,'')='W' then 'WAVE' else 'não identificado'
       end as anexo_descricao,
       coalesce( aa.caminho_anexo, '' ) as caminho_anexo
from aula a
left join anexo_aula aa on aa.id_aula=a.id
where a.id in (1,2,3,4)
order by coalesce( a.id, 0 ), coalesce( aa.tipo, '' );
