INSERT INTO alianca (nome, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('Red', true, NOW(), 'Admin');

INSERT INTO squad (nome, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('Squad_1', true, NOW(), 'Admin');

INSERT INTO cliente (nome, id_squad, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('NEON', 1 , true, NOW(), 'Admin');

INSERT INTO comunidade (id_alianca, id_cliente, nome, ativo, ultima_alteracao, usuario_alteracao)
VALUES (1 , 1 , 'COMPASS' , true, NOW(), 'Admin');

INSERT INTO lideres (id_comunidade, nome, tipo, ativo, ultima_alteracao, usuario_alteracao)
VALUES (1 , 'Flavia Carneiro' , 'Lider Operacoes', true, NOW(), 'Admin');

INSERT INTO alocacao (status, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('sim', true, NOW(), 'Admin');

INSERT INTO cargo (nome, senioridade, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('Trainee_I', 'junior', true, NOW(), 'Admin');

INSERT INTO colaborador ( matricula, id_alocacao, id_comunidade, id_cargo, nome, email, ativo, ultima_alteracao, usuario_alteracao)
VALUES (03606 , 1 , 1 , 1 ,'Carlos Alberto' , 'carlos.alberto@inmetrics.com.br', true, NOW(), 'Admin');

--SELECT * FROM colaborador;