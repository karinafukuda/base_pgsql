create or replace function GetAlianca (id_alianca int)
RETURNS TABLE(id int, nome varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
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
    FROM alianca
    WHERE alianca.id = id_alianca;
end
$$;

create or replace function GetAlocacao (id_alocacao int)
RETURNS TABLE(id int, status varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
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
    FROM alocacao
    WHERE alocacao.id = id_alocacao;
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
RETURNS TABLE(matricula int, id_alocacao int, id_comunidade int, id_cargo int, nome varchar, email varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
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
    FROM colaborador
    WHERE colaborador.matricula = id_colaborador;
end
$$;

create or replace function GetComunidade (id_comunidade int)
RETURNS TABLE(id int, id_alianca int, id_cliente int, nome varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
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
    FROM comunidade
    WHERE comunidade.id = id_comunidade;
end
$$;

create or replace function GetLideres (id_lideres int)
RETURNS TABLE(id int, id_comunidade int, nome varchar, ativo boolean, ultima_alteracao timestamp , usuario_alteracao varchar)
language 'plpgsql'
as
$$
begin
    RETURN QUERY
    SELECT 
    lideres.id,
    lideres.id_comunidade,
    lideres.nome,
    lideres.ativo,
    lideres.ultima_alteracao,
    lideres.usuario_alteracao
    FROM lideres
    WHERE lideres.id = id_lideres;
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

--ok --falta testar