use TestDB
-- Create SCHEMA base1
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

INSERT into Argentina VALUES ('BA01','Buenos Aires','CABA');

INSERT into Provincia (idProvincia,Poblacion,idArgentina)
VALUES ('1','1000','BA01');


 SELECT * FROM Argentina
 Select * from Provincia