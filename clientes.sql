CREATE DATABASE IF NOT EXISTS CLIENTES;
use CLIENTES;

CREATE TABLE PROVINCIAS(
    PRO_ID INT (2) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PRO_NOMBRE  VARCHAR(60)
);

CREATE TABLE LOCALIDADES(
    LOC_ID INT (5) NOT NULL AUTO_INCREMENT,
    LOC_NOMBRE VARCHAR (40),
    LOC_PRO_ID INTEGER (2),
    PRIMARY KEY (LOC_ID),
    FOREIGN KEY (LOC_PRO_ID) REFERENCES PROVINCIAS(PRO_ID)
); 

CREATE TABLE CLIENTES(
    CLI_ID INT (2) NOT NULL AUTO_INCREMENT,
    CLI_NOMBRE VARCHAR(40),
    CLI_APELLIDO VARCHAR(30),
    CLI_CUIT VARCHAR(11),
    CLI_DIRECCION VARCHAR(30),
    CLI_LOC_ID INTEGER(5),
    CLI_RAZONSOC VARCHAR(20),
    CLI_LOC_ID INT (5) NOT NULL,
    CLI_RAZONSOC VARCHAR(20),
    PRIMARY KEY (CLI_ID),
    FOREIGN KEY (CLI_LOC_ID) REFERENCES LOCALIDADES(LOC_ID)
);