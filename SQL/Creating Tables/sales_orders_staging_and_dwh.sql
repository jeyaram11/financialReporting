USE [jtechfinance-sqldb]
SET ANSI_NULLS ON 
SET QUOTED_IDENTIFIER ON 
GO 
CREATE TABLE [stage].[fin_sales_orders](
    [ordernumber] [nvarchar] (100) NULL,
    [orderdate] [date] NULL,
    [customer name index] [int] NULL,
    [channel] [nvarchar] (50) NULL,
    [currency_code] [nvarchar] (50) NULL,
    [warehouse_code] [nvarchar] (50) NULL,
    [region_id] [int] NULL,
    [product_id] [int] NULL,
    [order_quantity] [int] NULL,
    [unit_price] [decimal] (10,2) NULL ,
    [line_total] [decimal] (10,2) NULL,
    [total_unit_cost] [decimal] (10,2) NULL
)
CREATE TABLE [dbo].[fin_sales_orders](
    [ordernumber] [nvarchar] (100) NULL,
    [orderdate] [date] NULL,
    [customer_name_index] [int] NULL,
    [channel] [nvarchar] (50) NULL,
    [currency_code] [nvarchar] (50) NULL,
    [warehouse_code] [nvarchar] (50) NULL,
    [region_id] [int] NULL,
    [product_id] [int] NULL,
    [order_quantity] [int] NULL,
    [unit_price] [decimal] (10,2) NULL ,
    [line_total] [decimal] (10,2) NULL,
    [total_unit_cost] [decimal] (10,2) NULL,
    [InsertDate] [datetime] NOT NULL
)
ALTER TABLE [dbo].[fin_sales_orders] WITH CHECK ADD CONSTRAINT [fk_factsalesorders_region_id] FOREIGN KEY ([region_id])
REFERENCES [dbo].[fin_Regions] ([region_id])

ALTER TABLE [dbo].[fin_sales_orders] WITH CHECK ADD CONSTRAINT [fk_factsalesorders_product_id] FOREIGN KEY ([product_id])
REFERENCES [dbo].[fin_Products] ([product_id])
