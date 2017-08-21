
/* créer le role master avec un autre superutilisateur */ 
CREATE ROLE master with password 'master_password' NOSUPERUSER CREATEDB CREATEROLE INHERIT LOGIN;


/* la suite avec le role master */
create database accident with owner master;

CREATE USER developer WITH PASSWORD 'developer_password';
CREATE USER loader WITH PASSWORD 'loader_password';

CREATE SCHEMA IF NOT EXISTS chargement;
CREATE SCHEMA IF NOT EXISTS donnees;
CREATE SCHEMA IF NOT EXISTS stat;

grant ALL PRIVILEGES on schema chargement to loader;

grant usage on schema chargement to developer;
grant select on all tables in schema chargement to developer;
grant ALL privileges on schema donnees to developer;
grant ALL privileges on schema stat to developer;





