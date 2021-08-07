create or replace function Insertdiretoria ( 
    nome varchar, 
    ativo boolean, 
    usuario_alteracao varchar
)
returns void
language 'plpgsql'
as
$$
begin
    INSERT INTO public.diretoria ("nome", "ativo", "usuario_alteracao")
    VALUES ( nome, ativo, usuario_alteracao);
end
$$;

create function InsertStatusAlocacao (
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
    INSERT INTO public.status_alocacao (
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
    id_status_alocacao int,
    id_gestao int,
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
        "matricula", "id_status_alocacao", "id_gestao", "id_cargo", "nome", "email","ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (matricula, id_status_alocacao, id_gestao, id_cargo, nome, email, ativo, now(), usuario_alteracao);
end
$$;

create function InsertGestao (
    id int,
    id_diretoria int,
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
    INSERT INTO public.gestao (
        "id", "id_diretoria", "id_cliente", "nome", "ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (id, id_diretoria, id_cliente, nome, ativo, now(), usuario_alteracao);
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
    INSERT INTO public.squad (
        "id", "nome", "ativo", "ultima_alteracao", "usuario_alteracao")
    VALUES (id, nome, ativo, now(), usuario_alteracao);
end
$$;

--ok