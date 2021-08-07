create or replace function InsertAlianca ( 
    nome varchar, 
    ativo boolean, 
    usuario_alteracao varchar
)
returns void
language 'plpgsql'
as
$$
begin
    INSERT INTO public.alianca ("nome", "ativo", "usuario_alteracao")
    VALUES ( nome, ativo, usuario_alteracao);
end
$$;

create function InsertAlocacao (
    id int,
    status character varying,
    ativo boolean,
    usuario_alteracao character varying 
)
returns void
language 'plpgsql'
as 
$$
begin
    INSERT INTO public.alocacao (
    "id", "status", "ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (id, status, ativo, now(), usuario_alteracao);
end
$$;

create function InsertCargo (
    id int,
    nome character varying,
    senioridade character varying,
    ativo boolean,
    usuario_alteracao character varying 
)
returns void
language 'plpgsql'
as 
$$
begin
    INSERT INTO public.cargo (
        "id", "nome", "senioridade", "ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (id, nome, senioridade, ativo, now(), usuario_alteracao);
end    
$$;

create function InsertCliente (
    id int,
    id_squad int,
    nome character varying,
    ativo boolean,
    usuario_alteracao character varying 
)
returns void
language 'plpgsql'
as 
$$
begin
    INSERT INTO public.cliente (
        "id", "id_squad","nome","ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (id, id_squad, nome, ativo, now(), usuario_alteracao);
end
$$;

create function InsertColaborador (
    matricula int,
    id_alocacao int,
    id_comunidade int,
    id_cargo int,
    nome varchar,
    email varchar,
    ativo boolean,
    usuario_alteracao varchar
)
returns void
language 'plpgsql'
as 
$$
begin
    INSERT INTO public.colaborador (
        "matricula", "id_alocacao", "id_comunidade", "id_cargo", "nome", "email","ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (matricula, id_alocacao, id_comunidade, id_cargo, nome, email, ativo, now(), usuario_alteracao);
end
$$;

create function InsertComunidade (
    id int,
    id_alianca int,
    id_cliente int,
    nome character varying,
    ativo boolean,
    usuario_alteracao character varying 
)
returns void
language 'plpgsql'
as 
$$
begin
    INSERT INTO public.comunidade (
        "id", "id_alianca", "id_cliente", "nome", "ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (id, id_alianca, id_cliente, nome, ativo, now(), usuario_alteracao);
end   
$$;

create function InsertLideres (
    id int,
    id_comunidade int,
    nome character varying,
    tipo character varying,
    ativo boolean,
    usuario_alteracao character varying 
)
returns void
language 'plpgsql'
as 
$$
begin
    INSERT INTO public.lideres (
        "id", "id_comunidade", "nome", "tipo", "ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (id, id_comunidade, nome, tipo, ativo, now(), usuario_alteracao);
end
$$;

create function InsertSquad (
    id int,
    nome character varying,
    ativo boolean,
    usuario_alteracao character varying 
)
returns void
language 'plpgsql'
as 
$$
begin
    INSERT INTO public.lideres (
        "id", "nome", "ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (id, nome, ativo, now(), usuario_alteracao);
end
$$;

--ok-- falta testar