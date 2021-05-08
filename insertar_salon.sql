ALTER PROC insertar_salon
@salon varchar(50)
AS
declare @estado varchar(50)
select @estado = 'ACTIVO'

if EXISTS(select sln_nombre from salon where sln_nombre = @salon)
RAISERROR('YA EXISTE UN SALON CON ESTE NOMBRE, INGRESA UN NOMBRE NUEVO', 16, 1)
else
insert into salon values(@salon, @estado)

