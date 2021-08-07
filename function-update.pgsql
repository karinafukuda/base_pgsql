create or replace function UpdateAlianca(id_alianca int, nome_alianca varchar, ativo_alianca boolean, usuario_alteracao_alianca varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE alianca SET
        nome = nome_alianca,
        ativo = ativo_alianca,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_alianca
    WHERE id = id_alianca;
end
$$;

create or replace function UpdateAlocacao(id_alocacao int, status_alocacao varchar, ativo_alocacao boolean, usuario_alteracao_alocacao varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE alocacao SET
        status = status_alocacao,
        ativo = ativo_alocacao,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_alocacao
    WHERE id = id_alocacao;
end
$$;

create or replace function UpdateCargo(id_cargo int, nome_cargo varchar, senioridade_cargo varchar, ativo_cargo boolean, usuario_alteracao_cargo varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE cargo SET
        nome = nome_cargo,
        senioridade = senioridade_cargo,
        ativo = ativo_cargo,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_cargo
    WHERE id = id_cargo;
end
$$;

create or replace function UpdateCliente(id_cliente int, id_squad_cliente int, nome_cliente varchar, ativo_cliente boolean, usuario_alteracao_cliente varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE cliente SET
        id_squad = id_squad_cliente,
        nome = nome_cliente,
        ativo = ativo_cliente,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_cliente
    WHERE id = id_cliente;
end
$$;

create or replace function UpdateColaborador (matricula_colaborador int, id_alocacao_colaborador int, id_comunidade_colaborador int, id_cargo_colaborador int, nome_colaborador varchar, email_colaborador varchar, ativo_colaborador boolean, usuario_alteracao_colaborador varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE colaborador SET
        id_alocacao = id_alocacao_colaborador,
        id_comunidade = id_comunidade_colaborador,
        id_cargo = id_cargo_colaborador,
        nome = nome_colaborador,
        email = email_colaborador,
        ativo = ativo_colaborador,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_colaborador
    WHERE matricula = matricula_colaborador;
end
$$;

create or replace function UpdateComunidade(id_comunidade int, id_alianca_comunidade int, id_cliente_comunidade int, nome_comunidade varchar, ativo_comunidade boolean, usuario_alteracao_comunidade varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE comunidade SET
        id_alianca = id_alianca_comunidade,
        id_cliente = id_cliente_comunidade,
        nome = nome_comunidade,
        ativo = ativo_comunidade,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_comunidade
    WHERE id = id_comunidade;
end
$$;

create or replace function UpdateLideres(id_lideres int, id_comunidade_lideres int, nome_lideres int, tipo_lideres varchar, ativo_lideres boolean, usuario_alteracao_lideres varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE lideres SET
        id_comunidade = id_comunidade_lideres,
        nome = nome_lideres,
        tipo = tipo_lideres,
        ativo = ativo_lideres,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_lideres
    WHERE id = id_lideres;
end
$$;

create or replace function UpdateSquad(id_squad int, nome_squad int, ativo_squad boolean, usuario_alteracao_squad varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE squad SET
        nome = nome_squad,
        ativo = ativo_squad,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_squad
    WHERE id = id_squad;
end
$$;

--ok --falta testar