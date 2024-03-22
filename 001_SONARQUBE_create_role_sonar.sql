
CREATE ROLE sonar WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  REPLICATION
  PASSWORD 'Crisalide#1';

COMMENT ON ROLE sonar IS 'Contiene le grant di gestione (dml, execute) delle tabelle, delle viste e delle procedure che referenziano dati generici.';