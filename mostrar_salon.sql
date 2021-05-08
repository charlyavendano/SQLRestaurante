create proc mostrar_salon
@buscar varchar(50)
as
select *
from salon
where sln_nombre like '%' + @buscar + '%'