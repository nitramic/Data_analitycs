/*
Creamos nuestra base
*/

use TestDB
-- Create SCHEMA base1

/*
Creamos nuestras Tablas
*/

Create TABLE Argentina 
(
    idArgentina VARCHAR(20) PRIMARY KEY,
    Provincia VARCHAR(200) NOT NULL,
    Municipio VARCHAR(200) NOT NULL
    );

CREATE TABLE Provincia
(
    idProvincia VARCHAR(200) PRIMARY KEY,
    Poblacion VARCHAR(200),
    idArgentina VARCHAR(20) FOREIGN KEY REFERENCES Argentina(idArgentina)
);



/*
Hacemos el insert de los datos dentro de Nuestras tablas
*/

INSERT into Argentina VALUES ('BA01','Buenos Aires','CABA');

INSERT into Provincia (idProvincia,Poblacion,idArgentina)
VALUES ('1','1000','BA01');

 

/*
Ahora vemos como nos queda al final
*/

-- Select rows from a Table or View '[TableOrViewName]' in schema '[dbo]'
 SELECT * FROM Argentina
 Select * from Provincia

DROP TABLE Argentina;
DROP TABLE Provincia;