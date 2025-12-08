--Relacion muchos a muchos entre habitaciones y huespedes:
create table habitaciones(
    habitacion_numero int,
	precio_pro_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key(habitacion_numero)
)
create table huespedes(
    id_cliente int,
	nombre varchar(45) not null,
	apellido varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key(id_cliente)
)
create table reservas(
    inicio_fecha date,
	fin_feha date,
    habitacion int not null,
	huesped_id int not null,
	constraint habitaciones_fk foreign key(habitacion) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key(huesped_id) references huespedes(id_cliente),
	constraint reservas_pk primary key(habitacion,huesped_id)
)
--insert

--Consulta:
select ha.habitacion_numero, hu.nombre, hu.apellido 
from habitaciones ha, huespedes hu, reservas re
where ha.habitacion_numero = re.habitacion and hu.id_cliente = re.huesped_id
--subconsulta:
select nombre, apellido 
from huespedes
where id_cliente IN(select huesped_id from reservas where habitacion = 2)
--funcion de agregacion:
select ha.habitacion_numero, count(re.huesped_id) 
from habitaciones ha, reservas re
where ha.habitacion_numero = re.habitacion 
group by ha.habitacion_numero
--Consulta2:
select ha.habitacion_numero, ha.piso, hu.nombre, hu.apellido 
from habitaciones ha, huespedes hu, reservas re
where ha.habitacion_numero = re.habitacion and hu.id_cliente = re.huesped_id
and ha.piso = 4
--subconsulta2:
select nombre, apellido 
from huespedes
where id_cliente IN(select huesped_id from reservas where habitacion = 3)
--funcion de agregacion2:
select ha.habitacion_numero, AVG(re.huesped_id) 
from habitaciones ha, reservas re
where ha.habitacion_numero = re.habitacion 
group by ha.habitacion_numero
--Consulta3:
select ha.habitacion_numero, hu.nombre, hu.apellido 
from habitaciones ha, huespedes hu, reservas re
where ha.habitacion_numero = re.habitacion and hu.id_cliente = re.huesped_id
--subconsulta3:
select nombre, apellido 
from huespedes
where id_cliente IN(select huesped_id from reservas where habitacion = 4)
--funcion de agregacion3:
select ha.habitacion_numero, sum(ha.precio_pro_noche) as precio_por_noche
from habitaciones ha, reservas re
where ha.habitacion_numero = re.habitacion 
group by ha.habitacion_numero
