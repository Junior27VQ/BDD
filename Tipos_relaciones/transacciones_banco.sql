create table transacciones(
    codigo int,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fevha date,
	hora time,
	constraint transacciones_pk primary key(codigo)
)

create table banco(
    codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco),
	constraint codigo_transaccion_fk
	  foreign key (codigo_transaccion)
	  references transacciones (codigo)
)

select * from transacciones
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200, 'C', '20/09/2023', '23:30');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '21001', 1600, 'C', '17/05/2021', '16:37');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(23210, '32015', 400, 'C','28/02/2018', '13:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54143, '85213', 2000, 'C', '11/09/1999', '7:30');

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(3, '96325', 800, 'C', '06/11/2001', '11:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(2, '74125', 900, 'C', '23/10/2003', '9:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(1, '85213', 2000, 'C', '11/09/2004', '7:30');


select * from banco
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(123,1,'kncskcnkds');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(456,78945,'lmsklcd');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(789,54143,'mncdsk');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(987,95124,'kncndkscnfkd');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(654,78542,'mkcdmk');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(321,23210,'k nkdi');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(147,2,'kmcdd');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(258,3,'mcddfl');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(369,1,'mlcmes');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(963,2,'lmdfles');
insert into banco(codigo_banco, codigo_transaccion,detalle)
values(852,3,'k lmcolrr');
--consulta
select tr.*,ba.* from
transacciones tr, banco ba
where tr.codigo = ba.codigo_transaccion
and tr.tipo = 'C' and(tr.numero_cuenta between '22001' and '22004');
--subconsulta
select tr.* from
transacciones tr, banco ba
where tr.codigo = ba.codigo_transaccion
and ba.codigo_transaccion = 1;