USE [restarante]
GO

ALTER TABLE [dbo].[mesa] DROP CONSTRAINT [FK_mesa_salon]
GO

/****** Object:  Table [dbo].[mesa]    Script Date: 08/05/2021 10:15:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mesa]') AND type in (N'U'))
DROP TABLE [dbo].[mesa]
GO

/****** Object:  Table [dbo].[mesa]    Script Date: 08/05/2021 10:15:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[mesa](
	[mes_id] [int] IDENTITY(1,1) NOT NULL,
	[mes_nombre] [varchar](50) NULL,
	[mes_id_salon] [int] NULL,
	[mes_estado] [varchar](50) NULL,
	[mes_disponibilidad] [varchar](50) NULL,
 CONSTRAINT [PK_mesa] PRIMARY KEY CLUSTERED 
(
	[mes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[mesa]  WITH CHECK ADD  CONSTRAINT [FK_mesa_salon] FOREIGN KEY([mes_id_salon])
REFERENCES [dbo].[salon] ([sln_id])
GO

ALTER TABLE [dbo].[mesa] CHECK CONSTRAINT [FK_mesa_salon]
GO


