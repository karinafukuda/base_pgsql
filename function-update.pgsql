create or replace function UpdateDiretoria(id_diretoria int, nome_diretoria varchar, ativo_diretoria boolean, usuario_alteracao_diretoria varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE diretoria SET
        nome = nome_diretoria,
        ativo = ativo_diretoria,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_diretoria
    WHERE id = id_diretoria;
end
$$;

create or replace function UpdateStatusAlocacao(id_status_alocacao int, status_status_alocacao varchar, ativo_status_alocacao boolean, usuario_alteracao_status_alocacao varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE status_alocacao SET
        status = status_status_alocacao,
        ativo = ativo_status_alocacao,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_status_alocacao
    WHERE id = id_status_alocacao;
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

create or replace function UpdateColaborador (matricula_colaborador int, id_alocacao_colaborador int, id_gestao_colaborador int, id_cargo_colaborador int, nome_colaborador varchar, email_colaborador varchar, ativo_colaborador boolean, usuario_alteracao_colaborador varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE colaborador SET
        id_status_alocacao = id_status_alocacao_colaborador,
        id_gestao = id_gestao_colaborador,
        id_cargo = id_cargo_colaborador,
        nome = nome_colaborador,
        email = email_colaborador,
        ativo = ativo_colaborador,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_colaborador
    WHERE matricula = matricula_colaborador;
end
$$;

create or replace function UpdateGestao(id_gestao int, id_diretoria_gestao int, id_cliente_gestao int, nome_gestao varchar, ativo_gestao boolean, usuario_alteracao_gestao varchar)
RETURNS void
language 'plpgsql'
as
$$
begin
    UPDATE gestao SET
        id_diretoria = id_diretoria_gestao,
        id_cliente = id_cliente_gestao,
        nome = nome_gestao,
        ativo = ativo_gestao,
        ultima_alteracao = NOW(),
        usuario_alteracao = usuario_alteracao_gestao
    WHERE id = id_gestao;
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

--ok 