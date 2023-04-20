use CLIENTES;

INSERT INTO CLIENTES (CLI_ID, CLI_NOMBRE, CLI_APELLIDO, CLI_CUIT, CLI_DIRECCION, CLI_LOC_ID, CLI_RAZONSOC)
VALUES 
    (1, 'Juan', 'Pérez', '20-12345678-9', 'Calle Falsa 123', 'AR-BA', 'Compañía A'),
    (2, 'María', 'García', '27-34567890-1', 'Avenida Siempreviva 742', 'AR-C', 'Compañía B'),
    (3, 'Pedro', 'González', '23-98765432-1', 'Calle Falsa 456', 'AR-B', 'Compañía C'),
    (4, 'Lucía', 'Rodríguez', '30-87654321-0', 'Calle Real 789', 'AR-C', 'Compañía D');


INSERT INTO PROVINCIAS (PRO_NOMBRE) VALUES
("Buenos Aires"),
("Buenos Aires-GBA"),
("Capital Federal"),
("Catamarca"),
("Chaco"),
("Chubut"),
("Córdoba"),
("Corrientes"),
("Entre Ríos"),
("Formosa"),
("Jujuy"),
("La Pampa"),
("La Rioja"),
("Mendoza"),
("Misiones"),
("Neuquén"),
("Río Negro"),
("Salta"),
("San Juan"),
("San Luis"),
("Santa Cruz"),
("Santa Fe"),
("Santiago del Estero"),
("Tierra del Fuego"),
("Tucumán");

INSERT INTO LOCALIDADES (LOC_NOMBRE,LOC_PRO_ID) VALUES
('25 de Mayo',1),
('3 de febrero',1),
('A. Alsina',1),
('A. Gonzáles Cháves',1),
('Aguas Verdes',1),
('Alberti',1),
('Arrecifes',1),
('Ayacucho',1),
('Azul',1),
('Bahía Blanca',1),
('Balcarce',1);


UPDATE CLIENTES SET CLI_NOMBRE = 'Laura', CLI_APELLIDO = 'Fernández' WHERE CLI_ID = 2;

DELETE FROM CLIENTES WHERE CLI_ID = 3;

SELECT * FROM CLIENTES;

SELECT * FROM provincias;

SELECT PROVINCIAS.PRO_NOMBRE, LOCALIDADES.LOC_NOMBRE 
FROM PROVINCIAS 
JOIN LOCALIDADES ON PROVINCIAS.PRO_ID = LOCALIDADES.LOC_PRO_ID;


SELECT * FROM CLIENTES WHERE CLI_ID = 1;

