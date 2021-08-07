-- Database: Base-Alocacao

-- DROP DATABASE "Base-Alocacao";

CREATE TABLE alianca (
    id serial ,
    nome varchar (120) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (id)
);

CREATE TABLE squad (
    id serial ,
    nome varchar (120) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (id)
);

CREATE TABLE cliente (
    id serial ,
    id_squad int not null ,
    nome varchar (120) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (id),
    FOREIGN KEY (id_squad) REFERENCES squad (id)
);

CREATE TABLE comunidade (
    id serial ,
    id_alianca int not null,
    id_cliente int not null,
    nome varchar (120) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (id),
    FOREIGN KEY (id_alianca) REFERENCES alianca (id),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id)

);

CREATE TABLE lideres (
    id serial ,
    id_comunidade int not null ,
    nome varchar (120) not null,
    tipo varchar (120) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (id),
    FOREIGN KEY (id_comunidade) REFERENCES comunidade (id)
);



CREATE TABLE alocacao (
    id serial ,
    status varchar (20) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (id)
);

CREATE TABLE cargo (
    id serial ,
    nome varchar (150) not null,
    senioridade varchar (30) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (id)
);

CREATE TABLE colaborador (
    matricula int ,
    id_alocacao int not null ,
    id_comunidade int not null,
    id_cargo int not null,
    nome varchar (120) not null,
    email varchar (120) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (matricula),
    FOREIGN KEY (id_alocacao) REFERENCES alocacao (id),
    FOREIGN KEY (id_comunidade) REFERENCES comunidade (id),
    FOREIGN KEY (id_cargo) REFERENCES cargo (id)
);



