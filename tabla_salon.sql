USE [restarante]
GO

/****** Object:  Table [dbo].[salon]    Script Date: 08/05/2021 10:17:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[salon]') AND type in (N'U'))
DROP TABLE [dbo].[salon]
GO

/****** Object:  Table [dbo].[salon]    Script Date: 08/05/2021 10:17:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[salon](
	[sln_id] [int] IDENTITY(1,1) NOT NULL,
	[sln_nombre] [varchar](50) NOT NULL,
	[sln_estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_salon] PRIMARY KEY CLUSTERED 
(
	[sln_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


