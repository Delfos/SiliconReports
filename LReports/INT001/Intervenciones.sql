SELECT inter.intervencion_id, inter.prescripcion_fk, inter.prescripcioninicial_fk, inter.fecha as INTERVENCION_FECHA, PA.NHC AS NHC, ING.ICU, ing.etcid,
ING.fechaingreso as fec, concat(PA.APELLIDO,CONCAT(',',PA.NOMBRE)) pacient, tp.tipotratamiento tipus, pa.fechanacimiento neix, pa.sexo sexe ,SV.CODIGO SERVEI_CODI,
SV.DESCRIPCION SERVEI_DESC ,UE.CODIGO AS UNITATINF_CODI,UE.DESCRIPCION UNITATINF_DESC ,INTER.INTERVENCIONTIPO_CODIGO, inter.intervenciontipo_descripcion, 
inter.intervenciontipo_altid1, inter.observacionintervencion ,inter.intervencionprm_codigo, inter.intervencionprm_descripcion, inter.intervencionprm_altid1, 
inter.observacionprm ,inter.intervencionestado_codigo, inter.intervencionestado_descripcion, inter.intervencionestado_altid1, inter.observacionestado ,
usr.descripcion usuari, usr.login, usr.grupo_descripcion perfil
	FROM EDU_TRATAMIENTOPACIENTE TP INNER JOIN EDU_PACIENTE PA ON TP.PACIENTE_FK = PA.PACIENTE_ID INNER JOIN EDU_INGRESO ING ON TP.TRATAMIENTO_ID = ING.INGRESOS_ID 
	INNER JOIN EDU_SERVICIO SV ON ING.SERVICIO_FK=SV.SERVICIO_ID INNER JOIN EDU_UNIDADENFERMERIA UE ON ING.UNIDADENFERMERIA_FK=UE.UNIDADENFERMERIA_ID LEFT OUTER JOIN EDU_INTERVENCION 
	INTER ON TP.TRATAMIENTO_ID=inter.tratamiento_fk INNER JOIN edu_usuario usr on inter.usuario_fk=usr.usuario_id where ING.fechaingreso 
	between to_date('01/01/2014', 'DD/MM/YYYY') and to_date('31/12/2014', 'DD/MM/YYYY') UNION 
	SELECT inter.intervencion_id, inter.prescripcion_fk, inter.prescripcioninicial_fk, inter.fecha as INTERVENCION_FECHA, PA.NHC AS NHC, AM.ICU, AM.etcid, 
	AM.fechaingreso as fec, concat(PA.APELLIDO,CONCAT(',',PA.NOMBRE)) pacient, tp.tipotratamiento tipus, pa.fechanacimiento neix, pa.sexo sexe ,SV.CODIGO SERVEI_CODI,
	SV.DESCRIPCION SERVEI_DESC ,UE.CODIGO AS UNITATINF_CODI,UE.DESCRIPCION UNITATINF_DESC ,INTER.INTERVENCIONTIPO_CODIGO, inter.intervenciontipo_descripcion, 
	inter.intervenciontipo_altid1, inter.observacionintervencion ,inter.intervencionprm_codigo, inter.intervencionprm_descripcion, inter.intervencionprm_altid1, 
	inter.observacionprm ,inter.intervencionestado_codigo, inter.intervencionestado_descripcion, inter.intervencionestado_altid1, inter.observacionestado ,usr.descripcion usuari, 
	usr.login, usr.grupo_descripcion perfil 
	FROM EDU_TRATAMIENTOPACIENTE TP INNER JOIN EDU_PACIENTE PA ON TP.PACIENTE_FK = PA.PACIENTE_ID INNER JOIN EDU_AMBULATORIO AM ON TP.TRATAMIENTO_ID = AM.AMBULATORIO_FK_ID 
	INNER JOIN EDU_SERVICIO SV ON AM.SERVICIO_FK=SV.SERVICIO_ID INNER JOIN EDU_UNIDADENFERMERIA UE ON AM.UNIDADENFERMERIA_FK=UE.UNIDADENFERMERIA_ID LEFT OUTER JOIN 
	EDU_INTERVENCION INTER ON TP.TRATAMIENTO_ID=inter.tratamiento_fk INNER JOIN edu_usuario usr on inter.usuario_fk=usr.usuario_id 
	where AM.fechaingreso between to_date('01/01/2015', 'DD/MM/YYYY') and to_date('31/12/2015', 'DD/MM/YYYY') order by fec;

 