-- Active: 1728143183557@@127.0.0.1@5433@caderno
/**********************
 USUARIO
 **********************/
INSERT INTO usuario (id, email, nome, apelido, senha, perfil,created_at, modified_at, active)
VALUES (1,'maurosouza@gmail.com','Mauro Souza','Mauro',123456,'P','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario  (id, email, nome, apelido, senha, perfil,created_at, modified_at, active)
VALUES (2,'marinasilva@gmail.com','Marina Silva','Marina',123456,'P','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario  (id, email, nome, apelido, senha, perfil,created_at, modified_at, active)
VALUES (3,'olavobilac@gmail.com','Olavo Bilac','Olavo',123456,'P','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario  (id, email, nome, apelido, senha, perfil,created_at, modified_at, active)
VALUES (4,'luladasilva@gmail.com','Lula da Silva','Lula',123456,'I','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario  (id, email, nome, apelido, senha, perfil,created_at, modified_at, active)
VALUES (5,'alexandremoraes@gmail.com','Alexandre Moraes','Xandão',123456,'I','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario  (id, email, nome, apelido, senha, perfil,created_at, modified_at, active)
VALUES (6,'marciomedeiros@gmail.com','Mercio Medeiros','Marcio',123456,'P','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario  (id, email, nome, apelido, senha, perfil,created_at, modified_at, active)
VALUES (7,'messiasbolsonaro@gmail.com','Messias Bolsonaro','Bolsorano',123456,'I','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario  (id, email, nome, apelido, senha, perfil,created_at, modified_at, active)
VALUES (8,'romario@gmail.com','Romario Jogador','Romario',123456,'I','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);




/**********************
 AULA
 **********************/
INSERT INTO aula  (id, instituicao, data_aula, disciplina, conteudo,created_at, modified_at, active)
VALUES (1,'Uninorte','2024-10-03','Banco de Dados','Modelagem dimensional e conceitos de Bussines Intelligence(BI)','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO aula  (id, instituicao, data_aula, disciplina, conteudo,created_at, modified_at, active)
VALUES (2,'La Salle','2024-10-04','Logica de Programação','Lógica de programação e seus paradigmas (vantagens e desvantagens)','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO aula  (id, instituicao, data_aula, disciplina, conteudo,created_at, modified_at, active)
VALUES (3,'Uniasselve','2024-10-05','Python x Django','Principais conceitos e aplicações de alta performance','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO aula  (id, instituicao, data_aula, disciplina, conteudo,created_at, modified_at, active)
VALUES (4,'Fametro','2024-10-06','I.A.','Tipos de I.A. aplicações e prompts poderosos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);




/*************************
 ANEXO DA SALA
 *************************/
 -- Anexos da Sala 1 ( três anexos de cada tipo P-PDF   F-Foto  A-Audio )
INSERT INTO anexo_aula (id, id_aula, nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (1,1,'apostila de BD','A','P', 'c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO anexo_aula (id, id_aula, nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (2,1,'foto da capa do livro','F','J', 'c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO anexo_aula (id, id_aula, nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (3,1,'audio da master class','S','W', 'c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

-- Anexos da Sala 2 ( dois anexos de cada tipo P-PDF   F-Foto )
INSERT INTO anexo_aula (id, id_aula, nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (4,2,'Livro gang Of Four','A','P', 'c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO anexo_aula (id, id_aula, nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (5,2,'Pesquisa sobre Graphos','F', 'J', 'c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

-- Anexos da Sala 3: ( *** não possui anexos *** )

-- Anexos da Sala 4: ( *** não possui anexos *** )






/***********************************
 USUARIO X AULA
 ***********************************/
 -- Aula 1: com três Usuarios e um Instrutor
INSERT INTO usuario_aula (id, id_usuario, id_aula, created_at, modified_at, active)
VALUES (1, 1, 1,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario_aula (id, id_usuario, id_aula, created_at, modified_at, active)
VALUES (2, 2, 1,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario_aula (id, id_usuario, id_aula, created_at, modified_at, active)
VALUES (3, 3, 1,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO usuario_aula (id, id_usuario, id_aula, created_at, modified_at, active)
VALUES (4, 4, 1,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);
 --Instrutor (Lula)

-- Aula 2: com um Usuario e um Instutor
INSERT INTO usuario_aula (id, id_usuario, id_aula, created_at, modified_at, active)
VALUES (5,5, 2,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);
 --Instrutor (Xandão)
INSERT INTO usuario_aula (id, id_usuario, id_aula, created_at, modified_at, active)
VALUES (6,6, 2,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);


-- Aula 3: sem Usuario e somente com um Instrutor
INSERT INTO usuario_aula (id, id_usuario, id_aula, created_at, modified_at, active)
VALUES (7,7, 3,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);
 --Instrutor (Bolsonaro)

-- Aula 4: sem Usuario e somente com o instrutor
INSERT INTO usuario_aula (id, id_usuario, id_aula, created_at, modified_at, active)
VALUES (8,8, 4,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);
 --Instrutor (Romario)







/*********************************************
 COMENTÁRIOS E OPINIÕES DE AULA
 *********************************************/

--Instrutor
INSERT INTO comentario (id, data_comentario, texto, tipo, id_aula, id_usuario, created_at, modified_at, active)
VALUES (1, now(), 'Não esqueçam de fazer os exercícios e treinar nas bastante na ferramenta UML, estudem bastante', 'P', 1, 4,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO comentario (id, data_comentario, texto, tipo, id_aula, id_usuario, created_at, modified_at, active)
VALUES (2, now(), 'Eu conheço bem esse assunto, quem quiser umas a explicações a mais, me contato no meu zap mas e sendo muito (92) 99138-9431 pela parte da tarde', 'P', 1, 1,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO comentario (id, data_comentario, texto, tipo, id_aula, id_usuario, created_at, modified_at, active)
VALUES (3, now(), 'Eu vou quere umas aulas, vamos na combinar, mas pela manhã é melhor', 'O', 1, 2,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO comentario (id, data_comentario, texto, tipo, id_aula, id_usuario, created_at, modified_at, active)
VALUES (4, now(), 'A UML é a modelagem padrão para sistemas de TI', 'O', 1, 2,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO comentario (id, data_comentario, texto, tipo, id_aula, id_usuario, created_at, modified_at, active)
VALUES (5, now(), 'Foto de capa de um livro e um postcast top............', 'P', 1, 3,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO comentario (id, data_comentario, texto, tipo, id_aula, id_usuario, created_at, modified_at, active)
VALUES (6, now(), 'Anexei duas apostilas de exercício de UML blá...', 'P', 1, 2,'2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);






/*********************************************
 ANEXO X COMENTARIO
 *********************************************/
INSERT INTO anexo_comentario (id, id_comentario, nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (6, 5, 'capa-de-livro-top','F','J','c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO anexo_comentario (id, id_comentario, nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (7, 5, 'depoimento','S','W','c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO anexo_comentario (id, id_comentario,  nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (8, 6, 'exercicio uml avançado','A','P','c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);

INSERT INTO anexo_comentario (id,id_comentario,  nome, tipo, extensao, caminho_anexo, created_at, modified_at, active)
VALUES (9, 6, 'padrões de projetos em uml','A','P','c:\anexos','2024-10-07 01:55:02','2024-10-07 01:55:02',TRUE);


