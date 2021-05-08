create proc insertar_mesa
@mesa varchar(50),
@id_salon int
as
declare @estado varchar(50),
        @disponibilidad varchar(50)

select @estado = 'ACTIVO',
       @disponibilidad = 'LIBRE'

if exists(select * from mesa where mes_nombre =	@mesa and mes_nombre <> 'NULO')
RAISERROR('YA EXISTE UNA MESA CON ESE NOMBRE, FAVOR INGRESA OTRO NOMBRE', 16, 1)
else
insert into mesa values(@mesa, @id_salon, @estado, @disponibilidad)