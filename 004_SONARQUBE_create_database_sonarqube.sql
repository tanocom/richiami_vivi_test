
ALTER TABLESPACE sonarqube_tb
  OWNER TO sonar;

COMMENT ON TABLESPACE sonarqube_tb
  IS 'Tablespace per le tabelle';
    
ALTER TABLESPACE sonarqube_ix
  OWNER TO sonar;

COMMENT ON TABLESPACE sonarqube_ix
  IS 'Tablespace per gli indici';

CREATE DATABASE sonarqube
    WITH
    OWNER = sonar
    ENCODING = 'UTF8'
    LC_COLLATE = 'C.UTF-8'
    LC_CTYPE = 'C.UTF-8'
    TABLESPACE = sonarqube_tb
    CONNECTION LIMIT = -1
	TEMPLATE = template0
    IS_TEMPLATE = False;

GRANT TEMPORARY, CONNECT ON DATABASE sonarqube TO PUBLIC;

GRANT ALL ON DATABASE sonarqube TO sonar;
