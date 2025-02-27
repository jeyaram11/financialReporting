USE [jtechfinance-sqldb]
SET ANSI_NULLS ON 
SET QUOTED_IDENTIFIER ON 
GO 

CREATE TABLE [STAGE].[fin_Products](
    [product_id] [int] NULL,
    [product_name] [nvarchar] (20) NULL
)
CREATE TABLE [dbo].[fin_Products](
    [product_id] [int] IDENTITY(1,1) NOT NULL,
    [product_no] [int] NOT NULL,
    [product_name] [nvarchar] (20) NULL,
    [UpdatedDate] [datetime] NULL,
    [IsRowCurrent] [bit] NOT NULL,
    [EffectiveDate] [datetime] NULL,
    [EndDate] [datetime] NULL,
 CONSTRAINT [PK_product_id] PRIMARY KEY ([product_id])

WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
