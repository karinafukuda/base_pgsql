create or replace function DeleteAlianca(id_alianca int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM alianca 
    Where alianca.id = id_alianca;
end
$$;

create or replace function DeleteAlocacao (id_alocacao int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM alocacao 
    Where alocacao.id = id_alocacao;
end
$$;

create or replace function DeleteCargo (id_cargo int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM cargo 
    Where cargo.id = id_cargo;
end
$$;

create or replace function DeleteCliente (id_cliente int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM cliente 
    Where cliente.id = id_cliente;
end
$$;

create or replace function DeleteColaborador(matricula_colaborador int)
Returns void
Language 'plpgsql'
as
$$
begin
DELETE FROM colaborador 
WHERE matricula = matricula_colaborador;
end
$$;

create or replace function DeleteComunidade (id_comunidade int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM comunidade 
    Where comunidade.id = id_comunidade;
end
$$;

create or replace function DeleteLideres (id_lideres int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM lideres 
    Where lideres.id = id_lideres;
end
$$;

create or replace function DeleteSquad (id_squad int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM squad 
    Where squad.id = id_squad;
end
$$;

--deu ok --falta testar