USE [jtechfinance-sqldb]
SET ANSI_NULLS ON 
SET QUOTED_IDENTIFIER ON 
GO 

CREATE TABLE [STAGE].[fin_Regions](
    [region_id] [int]  NULL,
    [city] [nvarchar] (50) NULL,
    [country] [nvarchar] (50) NULL,
    [territory] [nvarchar] (50) NULL,
    [full name] [nvarchar] (50) NULL
)
CREATE TABLE [dbo].[fin_Regions](
    [region_id] [int] NOT NULL,
    [city] [nvarchar] (50) NULL,
    [country] [nvarchar] (50) NULL,
    [territory] [nvarchar] (50) NULL,
    [full name] [nvarchar] (50) NULL,
    [InsertedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_region_id] PRIMARY KEY (region_id)

WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = ON) ON [PRIMARY]
) ON [PRIMARY]
GO