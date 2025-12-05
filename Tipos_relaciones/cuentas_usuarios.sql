--sirve para eliminar una tabla 'drop table usuario'
--creacion de tablas
create table usuario(
    cedula char(5) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
    constraint usuario_pk primary key(cedula)
)

create table cuentas(
    numero_cuenta char(5),
    cedula_propietario char(5) not null,
    fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta),
	constraint cedula_propietario_fk
	  foreign key (cedula_propietario)
	  references usuario (cedula)
)
--insertrar informacion a las tablas
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('14785','Estiven','Dio','Ahorro',1002.2);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('25813','Alexandra','Nabarros','Corriente',500.89);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('74123','Alfaro','Zaul','Ahorro',1525.36);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('36987','Bulma','Capsula','Transaccional',1000);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('95123','Eloi','Jiot','Ahorro',500.50);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('75321','Estefania','Perez','Corriente',1098.75);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('36235','Felipe','Toro','Transaccional',485.25);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('78475','Gabriela','Ramorez','Ahorro',1099.99);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('52135','Leo','Griego','Ahorro',1025.35);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('46582','Atenea','Diosa','Corriente',100.2);
select * from usuario
--insertar informacion a la taba cuentas
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('64582','14785','2022/08/21',100);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('15604','74123','2022/09/22',200);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('23056','36987','2022/10/22',300);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('25648','95123','2022/11/23',400);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('85645','75321','2022/08/24',500);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('23564','36235','2022/12/25',600);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('32654','36235','2023/01/26',750);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('41254','78475','2023/02/27',800);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('26589','46582','2023/03/28',900);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('03260','74123','2023/01/26',700);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('02365','25813','2023/05/06',150);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('14785','52135','2023/09/21',1000);
select * from cuentas