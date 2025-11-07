--eliminacion de transacciones
select * from transacciones

delete from transacciones
where hora between'14:00' and'18:00' 
  and fecha>'2025/08/01'