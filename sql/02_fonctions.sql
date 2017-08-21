CREATE OR REPLACE FUNCTION get_code_r(character varying, character varying, character varying)
 RETURNS character varying
 LANGUAGE sql
AS $function$
    SELECT code_modalite_r FROM nomenclature WHERE tableau = $1 and colonne= $2 and code_modalite=$3;
$function$
;
CREATE OR REPLACE FUNCTION get_code_rr(character varying, character varying, character varying)
 RETURNS character varying
 LANGUAGE sql
AS $function$
    SELECT code_modalite_rr FROM nomenclature WHERE tableau = $1 and colonne= $2 and code_modalite=$3;
$function$
;
CREATE OR REPLACE FUNCTION get_libelle(character varying, character varying, character varying)
 RETURNS character varying
 LANGUAGE sql
AS $function$
    SELECT libelle_modalite FROM nomenclature WHERE tableau = $1 and colonne= $2 and code_modalite=$3;
$function$
;
CREATE OR REPLACE FUNCTION get_libelle_r(character varying, character varying, character varying)
 RETURNS character varying
 LANGUAGE sql
AS $function$
    SELECT libelle_modalite_r FROM nomenclature WHERE tableau = $1 and colonne= $2 and code_modalite=$3;
$function$
;
CREATE OR REPLACE FUNCTION get_libelle_rr(character varying, character varying, character varying)
 RETURNS character varying
 LANGUAGE sql
AS $function$
    SELECT libelle_modalite_rr FROM nomenclature WHERE tableau = $1 and colonne= $2 and code_modalite=$3;
$function$
;

