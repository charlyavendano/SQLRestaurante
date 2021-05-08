use restarante
go

create proc editar_mesa
@mesa as varchar(50),
@id_mesa as int
as
if exists(select mes_nombre from mesa where mes_nombre = @mesa and mes_id <> @id_mesa)
   RAISERROR('YA EXISTE UNA MESA CON ESTE NOMBRE, FAVOR INGRESA OTRO', 16, 1)
else
update mesa
set mes_nombre = @mesa
where mes_id = @id_mesa