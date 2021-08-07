-- Database: Base 

-- DROP DATABASE "Base";

CREATE TABLE diretoria (
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

CREATE TABLE gestao (
    id serial ,
    id_diretoria int not null,
    id_cliente int not null,
    nome varchar (120) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (id),
    FOREIGN KEY (id_diretoria) REFERENCES diretoria (id),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id)

);

CREATE TABLE status_alocacao (
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
    id_status_alocacao int not null ,
    id_coordenacao int not null,
    id_cargo int not null,
    nome varchar (120) not null,
    email varchar (120) not null,
    ativo boolean not null,
    ultima_alteracao timestamp not null,
    usuario_alteracao varchar (200) not null,
    PRIMARY KEY (matricula),
    FOREIGN KEY (id_status_alocacao) REFERENCES status_alocacao (id),
    FOREIGN KEY (id_gestao) REFERENCES gestao (id),
    FOREIGN KEY (id_cargo) REFERENCES cargo (id)
);



