create PROC mostrar_id_salon
@salon varchar(50)
AS

select sln_id
from salon
where sln_nombre = @salon
