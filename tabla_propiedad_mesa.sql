USE [restarante]
GO

/****** Object:  Table [dbo].[propiedad_mesa]    Script Date: 08/05/2021 10:16:45 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[propiedad_mesa]') AND type in (N'U'))
DROP TABLE [dbo].[propiedad_mesa]
GO

/****** Object:  Table [dbo].[propiedad_mesa]    Script Date: 08/05/2021 10:16:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[propiedad_mesa](
	[pm_id] [int] IDENTITY(1,1) NOT NULL,
	[pm_ancho] [int] NOT NULL,
	[pm_alto] [int] NOT NULL,
	[pm_letra] [int] NOT NULL,
 CONSTRAINT [PK_propiedad_mesa] PRIMARY KEY CLUSTERED 
(
	[pm_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


