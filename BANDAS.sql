CREATE DATABASE IF NOT EXISTS bandas_juveniles;
USE bandas_juveniles;

CREATE TABLE BANDA (
    id_banda INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_identificacion DATE,
    zona_actuacion VARCHAR(100),
    estado VARCHAR(50) DEFAULT 'Activa'
);

CREATE TABLE MIEMBRO (
	id_miembro int auto_increment PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(120),
    fecha_nacimiento DATE,
    rol VARCHAR (50),
    id_banda INT,
    CONSTRAINT fk_miembro_banda
        FOREIGN KEY (id_banda)
        REFERENCES BANDA(id_banda)

);

CREATE TABLE DELITO (
    id_delito INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    lugar VARCHAR(150),
    descripcion TEXT,
    estado_investigacion VARCHAR(50)
        DEFAULT 'Pendiente'
);

CREATE TABLE VICTIMA(
	id_victima INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(120)

);

CREATE TABLE POLICIA (
    id_policia INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    rango VARCHAR(50),
    unidad VARCHAR(100)
);