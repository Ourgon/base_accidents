drop function if exists public.calc_vs(bigint,varchar);
$function$
CREATE or replace FUNCTION public.calc_vs(p_id bigint, p_mode_transport2 varchar) RETURNS varchar AS $$
    DECLARE
        v_rowcount int;
        v_mt varchar := '00_solo';
        v_num_acc varchar;
        c_autres cursor for /* liste des autres mode de transport distincts en présence */
        	select distinct imp.num_acc num_acc,imp.mode_transport2 mt
			from stat.usagers sujet
			inner join stat.usagers imp
			on sujet.num_acc=imp.num_acc /*même accident*/
			and sujet.num_veh_r!=imp.num_veh_r /*verhicule différent (les piétons ont leur numéro de véhicule suffixé avec P pour les distinguer du numéro de véhicule leur est attribué qui les a percuté*/
			and sujet.id=p_id /*pour l'usager passé en paramètre */
			;
		r_autres record;
		
        
    BEGIN
    	v_rowcount := 0;
		open c_autres;
		loop
			fetch c_autres into r_autres;
			exit when not found;
			v_mt=r_autres.mt; /* sera le mode retenu au final sauf si multi ou traitement spécial pour les piétons */
			v_rowcount := v_rowcount + 1;
		end loop;
		close c_autres;
		
		delete from stat.usagers_vs where id=p_id;
		
		if v_rowcount > 1 then /* si plusieurs mode distinct on affecte le mode "multi"*/
			v_mt = 'zz_multi';
		end if;
		
		/* un piéton porte dans sa ligne le mode de transport impliqué : on force ce mode*/
		if p_mode_transport2='08' then
			select mode_transport_brut from stat.usagers where id=p_id into v_mt;
		end if;
		
		
		return v_mt;


    END;
$$ LANGUAGE plpgsql;
