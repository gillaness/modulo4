

CREATE TABLE agenda (
    idvisita      INTEGER NOT NULL,
    idempresa     INTEGER NOT NULL,
    fechavisita   VARCHAR2(10 CHAR) NOT NULL,
    horavisita    VARCHAR2(5 CHAR) NOT NULL,
    idtipovisita  INTEGER NOT NULL,
    idusuario     VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE agenda ADD CONSTRAINT pkagenda PRIMARY KEY ( idempresa,
                                                         idvisita );

CREATE TABLE detalle (
    iddetalle      INTEGER NOT NULL,
    nombredetalle  VARCHAR2(500 CHAR) NOT NULL
);

ALTER TABLE detalle ADD CONSTRAINT detallefactura_pk PRIMARY KEY ( iddetalle );

CREATE TABLE detallefactura (
    iddetalle  INTEGER NOT NULL,
    folio      INTEGER NOT NULL
);

ALTER TABLE detallefactura ADD CONSTRAINT relation_28_pk PRIMARY KEY ( iddetalle,
                                                                       folio );

CREATE TABLE empresa (
    idempresa      INTEGER NOT NULL,
    nombreempresa  VARCHAR2(50 CHAR) NOT NULL,
    direccion      VARCHAR2(100 CHAR) NOT NULL,
    contacto       VARCHAR2(100 CHAR) NOT NULL,
    telefono       VARCHAR2(12 CHAR),
    mailcontacto   VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE empresa ADD CONSTRAINT pkempresa PRIMARY KEY ( idempresa );

CREATE TABLE factura (
    folio      INTEGER NOT NULL,
    nombre     VARCHAR2(100 CHAR) NOT NULL,
    fecha      DATE NOT NULL,
    cantidad   INTEGER NOT NULL,
    precio     INTEGER NOT NULL,
    subtotal   INTEGER NOT NULL,
    iva        FLOAT(2) NOT NULL,
    total      INTEGER NOT NULL,
    pagada     CHAR(1) NOT NULL,
    idempresa  INTEGER NOT NULL
);

ALTER TABLE factura ADD CONSTRAINT factura_pk PRIMARY KEY ( folio );

CREATE TABLE perfil (
    idperfil      INTEGER NOT NULL,
    nombreperfil  VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE perfil ADD CONSTRAINT pkperfil PRIMARY KEY ( idperfil );

CREATE TABLE registroaccidente (
    id                    INTEGER NOT NULL,
    descripcionaccidente  VARCHAR2(1000 CHAR) NOT NULL,
    fechaaccidente        VARCHAR2(10 CHAR) NOT NULL,
    horaaccidente         VARCHAR2(5 CHAR) NOT NULL,
    areaaccidente         VARCHAR2(50) NOT NULL,
    idtipoaccidente       INTEGER,
    idusuario             VARCHAR2(15 CHAR) NOT NULL,
    idempresa             INTEGER NOT NULL,
    nombreaccidentado     VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE registroaccidente ADD CONSTRAINT pkregistroaccidente PRIMARY KEY ( id );

CREATE TABLE tiposaccidentes (
    idtipoaccidente  INTEGER NOT NULL,
    tipoaccidente    VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE tiposaccidentes ADD CONSTRAINT pktiposaccidentes PRIMARY KEY ( idtipoaccidente );

CREATE TABLE tipovisita (
    idtipovisita  INTEGER NOT NULL,
    nombrevisita  VARCHAR2(50 CHAR) NOT NULL
);

ALTER TABLE tipovisita ADD CONSTRAINT pktipovisita PRIMARY KEY ( idtipovisita );

CREATE TABLE usuario (
    idusuario  VARCHAR2(15 CHAR) NOT NULL,
    nombre     VARCHAR2(50 CHAR) NOT NULL,
    password   VARCHAR2(32 CHAR) NOT NULL,
    idperfil   INTEGER NOT NULL,
    idempresa  INTEGER NOT NULL
);

ALTER TABLE usuario ADD CONSTRAINT pkusuario PRIMARY KEY ( idusuario );

ALTER TABLE agenda
    ADD CONSTRAINT fkagendaempresa FOREIGN KEY ( idempresa )
        REFERENCES empresa ( idempresa );

ALTER TABLE agenda
    ADD CONSTRAINT fkagendatipovisita FOREIGN KEY ( idtipovisita )
        REFERENCES tipovisita ( idtipovisita );

ALTER TABLE agenda
    ADD CONSTRAINT fkagendausuario FOREIGN KEY ( idusuario )
        REFERENCES usuario ( idusuario );

ALTER TABLE detallefactura
    ADD CONSTRAINT fkdetfacdet FOREIGN KEY ( iddetalle )
        REFERENCES detalle ( iddetalle );

ALTER TABLE detallefactura
    ADD CONSTRAINT fkdetfacfac FOREIGN KEY ( folio )
        REFERENCES factura ( folio );

ALTER TABLE factura
    ADD CONSTRAINT fkfacturaempresa FOREIGN KEY ( idempresa )
        REFERENCES empresa ( idempresa );

ALTER TABLE registroaccidente
    ADD CONSTRAINT fkregaccemp FOREIGN KEY ( idempresa )
        REFERENCES empresa ( idempresa );

ALTER TABLE registroaccidente
    ADD CONSTRAINT fkregacciuser FOREIGN KEY ( idusuario )
        REFERENCES usuario ( idusuario );

ALTER TABLE registroaccidente
    ADD CONSTRAINT fkregacctiposacc FOREIGN KEY ( idtipoaccidente )
        REFERENCES tiposaccidentes ( idtipoaccidente );

ALTER TABLE usuario
    ADD CONSTRAINT fkusuarioempresa FOREIGN KEY ( idempresa )
        REFERENCES empresa ( idempresa );

ALTER TABLE usuario
    ADD CONSTRAINT fkusuarioperfil FOREIGN KEY ( idperfil )
        REFERENCES perfil ( idperfil );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             0
-- ALTER TABLE                             21
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0


-- SENTENCIAS DE DATOS INICIALES


INSERT INTO perfil VALUES (1, 'Administrador');
INSERT INTO perfil VALUES (2, 'Profesional');
INSERT INTO perfil VALUES (3, 'Cliente');

INSERT INTO empresa VALUES (1, 'APRL', 'SIN DIRECCION', 'CONTACTO', '987654321', 'contacto@aprl.cl');

INSERT INTO usuario VALUES ('167673902', 'Germ�n Illanes', 'abcd1234', 1, 1);

UPDATE usuario SET password = dbms_obfuscation_toolkit.md5(input => UTL_RAW.cast_to_raw(password));

INSERT INTO tiposaccidentes VALUES (1, 'leve');
INSERT INTO tiposaccidentes VALUES (2, 'grave');
INSERT INTO tiposaccidentes VALUES (3, 'fatal');

INSERT INTO tipovisita VALUES (1, 'Asesor�a');
INSERT INTO tipovisita VALUES (2, 'Capacitaci�n');
INSERT INTO tipovisita VALUES (3, 'Asesor�a Especial');

-- GENERAR INDICES AUTOINCREMENTALES
-- REEMPLAZAR DONDE APARECE APRL2 POR EL NOMBRE DE SU BASE DE DATOS

CREATE OR REPLACE TRIGGER "APRL2"."REGISTROACCIDENTE_TRG" 
BEFORE INSERT ON REGISTROACCIDENTE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT REGISTROACCIDENTE_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "APRL2"."REGISTROACCIDENTE_TRG" ENABLE;

CREATE OR REPLACE TRIGGER "APRL2"."FACTURA_TRG" 
BEFORE INSERT ON FACTURA 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.FOLIO IS NULL THEN
      SELECT FACTURA_SEQ.NEXTVAL INTO :NEW.FOLIO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "APRL2"."FACTURA_TRG" ENABLE;

CREATE OR REPLACE TRIGGER "APRL2"."AGENDA_TRG" 
BEFORE INSERT ON AGENDA 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDVISITA IS NULL THEN
      SELECT AGENDA_SEQ.NEXTVAL INTO :NEW.IDVISITA FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "APRL2"."AGENDA_TRG" ENABLE;




