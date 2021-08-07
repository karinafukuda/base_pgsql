INSERT INTO diretoria (nome, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('Head-Desenvolvimento', true, NOW(), 'Admin');

INSERT INTO squad (nome, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('Squad_1', true, NOW(), 'Admin');

INSERT INTO cliente (nome, id_squad, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('Empresa1', 1 , true, NOW(), 'Admin');

INSERT INTO gestao (id_diretoria, id_cliente, nome, ativo, ultima_alteracao, usuario_alteracao)
VALUES (1 , 1 , 'Desenvolvimento1' , true, NOW(), 'Admin');

INSERT INTO status_alocacao (status, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('sim', true, NOW(), 'Admin');

INSERT INTO cargo (nome, senioridade, ativo, ultima_alteracao, usuario_alteracao)
VALUES ('Trainee', 'junior', true, NOW(), 'Admin');

INSERT INTO colaborador ( matricula, id_status_alocacao, id_gestao, id_cargo, nome, email, ativo, ultima_alteracao, usuario_alteracao)
VALUES (01234 , 1 , 1 , 1 ,'Carlos Jose' , 'carlos.jose@com.br', true, NOW(), 'Admin');

--SELECT * FROM colaborador;