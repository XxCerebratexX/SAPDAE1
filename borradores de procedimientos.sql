
-- Mostrar busqueda de asesores en base a la materia
SELECT DISTINCT
    Id_asesor, Nombre, Nombre_Carrera, Foto, ApellidoPaterno
FROM
    asesores
        INNER JOIN
    materias ON (materias.Asesor_idAsesor = Id_asesor)
        INNER JOIN
    Nombre_Carrera ON (asesores.asesor_idNombre_Carrera = idNombre_Carrera)
WHERE
    Materia LIKE 'palabra%'
ORDER BY Nombre_Carrera;
-- La palabra Carrera sigue siendo ambigua

-- ---------------------------------------

-- Mostrar correos de los asesores
SELECT 
    Correo
FROM
    correo_asesor
        INNER JOIN
    asesores ON (correo_asesor.Asesor_idAsesor = id_asesor);
-- -------------------------------------------------------------
-- Mostrar horarios de acuerdo a horas

SELECT 
    Nombre,
    ApellidoPaterno,
    Materia,
    FechaAsesoria,
    AsesorHora_Ini,
    AsesorHora_Fin
FROM
    horario
        INNER JOIN
    asesores ON (horario.Asesor_idAsesor = id_asesor)
        INNER JOIN
    materias ON (horario.Materias_idMateria = Id_mat)
        INNER JOIN
    fecha_asesor ON (horario.Fecha_idFecha = id_Fecha)
        INNER JOIN
    asesor_hora_inicio ON (horario.AsesorHorInic_idAsesorHorInic = Id_inicio)
        INNER JOIN
    asesor_hora_fin ON (horario.AsesorHoraFin_idAsesorHoraFin = Id_fin)
WHERE
    AsesorHora_Ini BETWEEN 'horaInicial1' AND 'horaInicial2';
-- ------------------------------------------------------------------------------------------------

-- Mostrar Asesorados del Asesor en cuestion
SELECT 
    asesorado.Nombre,
    asesorado.ApellidoPaterno,
    Nombre_Carrera,
    Materia
FROM
    relacion_asesor_asesorados
        INNER JOIN
    asesores ON (relacion_asesor_asesorados.Asesor_idAsesor = Id_asesor)
        INNER JOIN
    asesorado ON (relacion_asesor_asesorados.Asesorado_idAsesorado = Id_asesorado)
        INNER JOIN
    Solicitud ON (asesorado.Solicitud_Id_solicitud = Id_solicitud)
        INNER JOIN
    Horario ON (Solicitud.Horario_idHorario = idHorario)
        INNER JOIN
    Materias ON (horario.Materias_idMateria = Id_mat)
        INNER JOIN
    Nombre_Carrera ON (asesorado.asesorado_idNombre_Carrera = idNombre_Carrera)
WHERE
    Id_asesor = 'iddelasesor';
-- ------------------------------------------------------------------------------------

-- Dar de alta en Asesor y Asesorados

insert into asesorado (Id_asesorado,Password,Nombre,ApellidoPaterno,ApellidoMaterno)
values (entero,'charde16','nombre1','apellidopadre','apellidomadre');

insert into asesores(Id_asesor,Password,Nombre,ApellidoPaterno,ApellidoMaterno)
values(entero,'charde16','nombre1','apellidopadre','apellidomadre');


-- --------------------------------------------------------------------------------------

-- Consulta para logueo usando tabla asesorado
SELECT 
    Id_asesorado, Password
FROM
    asesorado
WHERE
    Id_asesorado = 'iddelogueo';
    
-- -----------------------------------------------------------------------------------
SELECT 
    idAdministrador, Contraseña
FROM
    administrador
WHERE
    idAdministrador = 'iddelogueo';
-- ------------------------------------------------------------------------------------

-- Ingreso datos Horario y tablas correspondientes
SELECT 
    Materia, id_mat
FROM
    nombre_materia;
    
insert into materias (Id_mat,Asesor_idAsesor,Id_Nombremat,Materia)
	values (identificador,iddelasesor,iddelamateria,'nombre_materia');

insert into fecha_asesor (id_Fecha,Asesor_idAsesor,FechaAsesoria)
values(identificadorfecha,iddelasesor,'dia');

insert into asesor_hora_inicio (Id_inicio,Asesor_idAsesor,AsesorHora_Ini)
values(idhorainicial,iddelasesor,'cadenahorainicial');

insert into asesor_hora_fin(Id_fin,Asesor_idAsesor,AsesorHora_Fin)
values(idhorafinal,iddelasesor,'cadenahorafinal');

insert into horario (idHorario,Asesor_idAsesor,Materias_idMateria,Fecha_idFecha,AsesorHorInic_idHorInic,AsesorHoraFin_idAsesorHoraFin)
values(iddelhorario,iddelasesor,iddelamateria,identificadorfecha,idhorainicial,idhorafinal);

-- --------------------------------------------------------------------------------------
-- 
asdfasdfasdfasdf es una prueba de GitHub putas

-- 

