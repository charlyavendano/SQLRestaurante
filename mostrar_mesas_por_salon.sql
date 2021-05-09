USE [restarante]
GO
/****** Object:  StoredProcedure [dbo].[mostrar_mesas_por_salon]    Script Date: 02/05/2021 22:21:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_mesas_por_salon]
@id_salon int
as
select m.*, p.*
from mesa m
inner join salon on salon.sln_id = m.mes_id_salon 
cross join propiedad_mesa p
where mes_id_salon = @id_salon

