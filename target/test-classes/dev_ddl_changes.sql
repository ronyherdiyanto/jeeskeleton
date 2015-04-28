-- Role: skeletondb

-- DROP ROLE skeletondb;

CREATE ROLE skeletondb LOGIN
  ENCRYPTED PASSWORD 'md5ca6be77e9094c11de5ba6fc024684745'
  SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION;


-- Table: employee

-- DROP TABLE employee;

CREATE TABLE employee
(
  id integer NOT NULL,
  name character(129),
  salary numeric,
  ssn character(128)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE employee
  OWNER TO skeletondb;
  
-- Sequence: employee_seq

-- DROP SEQUENCE employee_seq;

CREATE SEQUENCE employee_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 10
  START 4
  CACHE 1
  CYCLE;
ALTER TABLE employee_seq
  OWNER TO skeletondb;

