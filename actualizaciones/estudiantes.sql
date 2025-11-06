--crear actualizacion de estudiantes
select * from estudiantes

update estudiantes set apellido='Hernandez'
where cedula like('17%')
