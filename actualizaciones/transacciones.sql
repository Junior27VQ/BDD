--crear actualizacion de transacciones
select * from transacciones

update transacciones set tipo='T'
where fecha between'2025/09/01' and'2025/09/30'
  AND hora between'14:00' and'20:00'
  AND (monto>money(100) AND monto<money(500))
