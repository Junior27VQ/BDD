--crear tabla de transacciones
create table transacciones(
    codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transaccione_pk primary key(codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(123,'12345',125,'C','25/10/2020','22:02')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(147,'54321',250,'D','20/02/2002','12:25')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(159,'67890',136,'C','05/12/2021','22:45')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(951,'09876',268,'D','10/01/2010','21:25')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(357,'14753',156,'C','28/11/2021','20:12')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(753,'35741',257,'D','05/05/2005','08:36')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(842,'26845',139,'C','28/12/2021','21:19')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(248,'54862',268,'D','29/03/2004','10:05')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(359,'96357',159,'C','20/11/2022','20:20')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(953,'75369',258,'D','10/05/2005','08:20')

select * from transacciones
