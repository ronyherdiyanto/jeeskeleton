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
