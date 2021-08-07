create or replace function ListDiretoria ()
RETURNS TABLE (id int, nome varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
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
    FROM diretoria;
end    
$$;

create or replace function ListStatusAlocacao ()
RETURNS TABLE (id int, status varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
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
    FROM status_alocacao;
end    
$$;

create or replace function ListCargo ()
RETURNS TABLE (id int, nome varchar, senioridade varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
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
    FROM cargo;
end    
$$;

create or replace function ListCliente ()
RETURNS TABLE (id int, id_squad int, nome varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
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
    FROM cliente;
end    
$$;

create or replace function ListColaborador ()
RETURNS TABLE (matricula int, id_status_alocacao int, id_gestao int, id_cargo int, nome varchar, email varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
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
    FROM colaborador;
end    
$$;

create or replace function ListGestao ()
RETURNS TABLE (id int, id_diretoria int, id_cliente int, nome varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
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
    FROM gestao;
end    
$$;

create or replace function ListSquad ()
RETURNS TABLE (id int, nome varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
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
    FROM squad;
end    
$$;

--ok 
