create or replace function DeleteDiretoria(id_diretoria int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM diretoria 
    Where diretoria.id = id_diretoria;
end
$$;

create or replace function DeleteStatusAlocacao (status_alocacao int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM status_alocacao 
    Where status_alocacao.id = status_alocacao;
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

create or replace function DeleteGestao (id_gestao int)
RETURNS void
language 'plpgsql'
as
$$
begin
    DELETE FROM gestao 
    Where gestao.id = id_gestao;
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
--ok