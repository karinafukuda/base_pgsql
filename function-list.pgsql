create or replace function ListAlianca ()
RETURNS TABLE (id int, nome varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
language 'plpgsql' 
as
$$
begin
    RETURN QUERY
    SELECT 
    alianca.id,
    alianca.nome,
    alianca.ativo,
    alianca.ultima_alteracao,
    alianca.usuario_alteracao
    FROM alianca;
end    
$$;

create or replace function ListAlocacao ()
RETURNS TABLE (id int, status varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
language 'plpgsql' 
as
$$
begin
    RETURN QUERY
    SELECT 
    alocacao.id,
    alocacao.status,
    alocacao.ativo,
    alocacao.ultima_alteracao,
    alocacao.usuario_alteracao
    FROM alocacao;
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
RETURNS TABLE (matricula int, id_alocacao int, id_comunidade int, id_cargo int, nome varchar, email varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
language 'plpgsql' 
as
$$
begin
    RETURN QUERY
    SELECT 
    colaborador.matricula,
    colaborador.id_alocacao,
    colaborador.id_comunidade,
    colaborador.id_cargo,
    colaborador.nome,
    colaborador.email,
    colaborador.ativo,
    colaborador.ultima_alteracao,
    colaborador.usuario_alteracao
    FROM colaborador;
end    
$$;

create or replace function ListComunidade ()
RETURNS TABLE (id int, id_alianca int, id_cliente int, nome varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
language 'plpgsql' 
as
$$
begin
    RETURN QUERY
    SELECT 
    comunidade.id,
    comunidade.id_alianca,
    comunidade.id_cliente,
    comunidade.nome,
    comunidade.ativo,
    comunidade.ultima_alteracao,
    comunidade.usuario_alteracao
    FROM comunidade;
end    
$$;

create or replace function ListLideres ()
RETURNS TABLE (id int, id_comunidade int, nome varchar, tipo varchar, ativo boolean, ultima_alteracao timestamp, usuario_alteracao varchar)
language 'plpgsql' 
as
$$
begin
    RETURN QUERY
    SELECT 
    lideres.id,
    lideres.id_comunidade,
    lideres.nome,
    lideres.tipo,
    lideres.ativo,
    lideres.ultima_alteracao,
    lideres.usuario_alteracao
    FROM lideres;
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

--ok --falta testar
