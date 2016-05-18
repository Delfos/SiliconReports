SELECT  usr.login, inter.fecha as INTERVENCION_FECHA, PA.NHC AS NHC, ING.ICU, INTER.INTERVENCIONTIPO_CODIGO, inter.intervenciontipo_descripcion
	FROM EDU_TRATAMIENTOPACIENTE TP INNER JOIN EDU_PACIENTE PA ON TP.PACIENTE_FK = PA.PACIENTE_ID INNER JOIN EDU_INGRESO ING ON TP.TRATAMIENTO_ID = ING.INGRESOS_ID 
	INNER JOIN EDU_SERVICIO SV ON ING.SERVICIO_FK=SV.SERVICIO_ID INNER JOIN EDU_UNIDADENFERMERIA UE ON ING.UNIDADENFERMERIA_FK=UE.UNIDADENFERMERIA_ID LEFT OUTER JOIN EDU_INTERVENCION 
	INTER ON TP.TRATAMIENTO_ID=inter.tratamiento_fk INNER JOIN edu_usuario usr on inter.usuario_fk=usr.usuario_id where ING.fechaingreso 
	between to_date('01/12/2015', 'DD/MM/YYYY') and to_date('31/12/2015', 'DD/MM/YYYY')
	UNION
SELECT usr.login, inter.fecha as INTERVENCION_FECHA, PA.NHC AS NHC, AM.ICU, INTER.INTERVENCIONTIPO_CODIGO, inter.intervenciontipo_descripcion 
	FROM EDU_TRATAMIENTOPACIENTE TP INNER JOIN EDU_PACIENTE PA ON TP.PACIENTE_FK = PA.PACIENTE_ID INNER JOIN EDU_AMBULATORIO AM ON TP.TRATAMIENTO_ID = AM.AMBULATORIO_FK_ID 
	INNER JOIN EDU_SERVICIO SV ON AM.SERVICIO_FK=SV.SERVICIO_ID INNER JOIN EDU_UNIDADENFERMERIA UE ON AM.UNIDADENFERMERIA_FK=UE.UNIDADENFERMERIA_ID LEFT OUTER JOIN 
	EDU_INTERVENCION INTER ON TP.TRATAMIENTO_ID=inter.tratamiento_fk INNER JOIN edu_usuario usr on inter.usuario_fk=usr.usuario_id 
	where AM.fechaingreso between to_date('01/12/2015', 'DD/MM/YYYY') and to_date('31/12/2015', 'DD/MM/YYYY') order by 1;

 