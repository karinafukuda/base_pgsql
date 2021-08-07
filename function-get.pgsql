create or replace function GetDiretoria (id_diretoria int)
RETURNS TABLE(id int, nome varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
language 'plpgsql'
as
$$
begin
    RETURN QUERY
    SELECT 
    diretoria.id,
    diretoria.nome,
    diretoria.ativo,
    diretoria.ultima_alteracao,
    diretoria.usuario_alteracao
    FROM diretoria
    WHERE diretoria.id = id_diretoria;
end
$$;

create or replace function GetStatusAlocacao (id_status_alocacao int)
RETURNS TABLE(id int, status varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
language 'plpgsql'
as
$$
begin
    RETURN QUERY
    SELECT 
    status_alocacao.id,
    status_alocacao.status,
    status_alocacao.ativo,
    status_alocacao.ultima_alteracao,
    status_alocacao.usuario_alteracao
    FROM status_alocacao
    WHERE status_alocacao.id = id_status_alocacao;
end
$$;

create or replace function GetCargo (id_cargo int)
RETURNS TABLE(id int, nome varchar, senioridade varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
language 'plpgsql'
as
$$
begin
    RETURN QUERY
    SELECT 
    cargo.id,
    cargo.nome,
    cargo.senioridade,
    cargo.ativo,
    cargo.ultima_alteracao,
    cargo.usuario_alteracao
    FROM cargo
    WHERE cargo.id = id_cargo;
end
$$;

create or replace function GetCliente (id_cliente int)
RETURNS TABLE(id int, id_squad int, nome varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
language 'plpgsql'
as
$$
begin
    RETURN QUERY
    SELECT 
    cliente.id,
    cliente.id_squad,
    cliente.nome,
    cliente.ativo,
    cliente.ultima_alteracao,
    cliente.usuario_alteracao
    FROM cliente
    WHERE cliente.id = id_cliente;
end
$$;

create or replace function GetColaborador (id_colaborador int)
RETURNS TABLE(matricula int, id_status_alocacao int, id_gestao int, id_cargo int, nome varchar, email varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
language 'plpgsql'
as
$$
begin
    RETURN QUERY
    SELECT 
    colaborador.matricula,
    colaborador.id_status_alocacao,
    colaborador.id_gestao,
    colaborador.id_cargo,
    colaborador.nome,
    colaborador.email,
    colaborador.ativo,
    colaborador.ultima_alteracao,
    colaborador.usuario_alteracao
    FROM colaborador
    WHERE colaborador.matricula = id_colaborador;
end
$$;

create or replace function GetGestao (id_gestao int)
RETURNS TABLE(id int, id_diretoria int, id_cliente int, nome varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
language 'plpgsql'
as
$$
begin
    RETURN QUERY
    SELECT 
    gestao.id,
    gestao.id_diretoria,
    gestao.id_cliente,
    gestao.nome,
    gestao.ativo,
    gestao.ultima_alteracao,
    gestao.usuario_alteracao
    FROM gestao
    WHERE gestao.id = id_gestao;
end
$$;

create or replace function GetSquad (id_squad int)
RETURNS TABLE(id int, nome varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
language 'plpgsql'
as
$$
begin
    RETURN QUERY
    SELECT 
    squad.id,
    squad.nome,
    squad.ativo,
    squad.ultima_alteracao,
    squad.usuario_alteracao
    FROM squad
    WHERE squad.id = id_squad;
end
$$;

--ok 