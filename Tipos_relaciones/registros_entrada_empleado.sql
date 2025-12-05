create table registro_entrada(
    codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registo_pk primary key(codigo_registro)
)
delete from registro_entrada
--modificamos la tabla para insertar una nueva columna
alter table registro_entrada
add column codigo_empleado int not null
--establecemos una columna como calave foranea
alter table registro_entrada
add constraint codigo_registro_fk
foreign key (codigo_registro)
references empleado_registro(codigo_empleado)

create table empleado_registro(
    codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado primary key(codigo_empleado)
)

select * from registro_entrada
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(123,'0123456789','2023/08/01','08:00',2201);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(234,'0103456789','2023/08/02','08:10',2202);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(456,'0108456789','2023/08/03','08:15',2203);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(567,'0104456789','2023/08/06','08:10',2204);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(678,'0103450789','2023/08/08','08:20',2205);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(789,'0108450789','2023/08/10','08:25',2206);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(890,'0100456789','2023/09/01','09:00',2207);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(901,'0103016789','2023/09/02','09:10',2208);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(012,'0823456789','2023/10/25','10:35',2209);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(014,'0403456789','2023/11/28','12:45',2210);
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(345,'0103056789','2023/12/31','13:00',2201);


select * from empleado_registro
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2201,'Jimenes','2025/11/02','12:05');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2202,'Luisa','2025/01/05','10:55');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2203,'Luis','2025/10/22','15:05');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2204,'Sandra','2025/05/02','18:20');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2205,'Stalin','2025/02/08','22:45');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2206,'Jaimen','2025/08/03','13:56');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2207,'Alfaro','2025/07/01','02:28');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2208,'Aurelio','2025/05/25','04:35');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2209,'Laura','2025/10/20','11:25');
insert into empleado_registro(codigo_empleado,nombre,fecha,hora)
values(2210,'Monica','2025/03/28','16:31');
--consulta
select re.cedula_empleado, er.fecha, er.nombre from
registro_entrada re, empleado_registro er
where re.codigo_registro = er.codigo_empleado
and (re.fecha between '2023/08/01' and '2023/08/31') 
or re.cedula_empleado like '17%' and (er.hora between '08:00' and '12:00')
or (er.fecha between '2023/10/06' and '2023/10/20') 
and re.cedula_empleado like '08%' and (re.hora between '09:00' and '13:00');
--subconsulta
select er.codigo_empleado, er.nombre from
registro_entrada re, empleado_registro er
where re.codigo_registro = er.codigo_empleado
and re.cedula_empleado = '2201'