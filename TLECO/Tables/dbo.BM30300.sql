CREATE TABLE [dbo].[BM30300]
(
[TRX_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Component_ID] [int] NOT NULL,
[Parent_Component_ID] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Location_Code_Note_Index] [numeric] (19, 5) NOT NULL,
[Stock_Quantity] [numeric] (19, 5) NOT NULL,
[Assemble_Quantity] [numeric] (19, 5) NOT NULL,
[BM_Stock_Method] [smallint] NOT NULL,
[Cost_Type] [smallint] NOT NULL,
[INVINDX] [int] NOT NULL,
[Inventory_Account_Reference] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Variance_Index] [int] NOT NULL,
[Variance_Account_Reference] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Design_Quantity] [numeric] (19, 5) NOT NULL,
[Scrap_Percentage] [smallint] NOT NULL,
[STNDCOST] [numeric] (19, 5) NOT NULL,
[Standard_Quantity] [numeric] (19, 5) NOT NULL,
[Extended_Standard_Cost] [numeric] (19, 5) NOT NULL,
[Extended_Standard_Quantity] [numeric] (19, 5) NOT NULL,
[Ext_Assemble_Qty_Posting_Cost] [numeric] (19, 5) NOT NULL,
[Ext_Stock_Receipt_Cost] [numeric] (19, 5) NOT NULL,
[Ext_Stock_Qty_Posting_Cost] [numeric] (19, 5) NOT NULL,
[Ext_Subasm_Posting_Cost] [numeric] (19, 5) NOT NULL,
[Ext_Subasm_Receipt_Cost] [numeric] (19, 5) NOT NULL,
[BM_Component_Type] [smallint] NOT NULL,
[Lvl] [smallint] NOT NULL,
[QTYBSUOM] [numeric] (19, 5) NOT NULL,
[Assemble_Serial_Lot_Count] [numeric] (19, 5) NOT NULL,
[Stock_Serial_Lot_Count] [numeric] (19, 5) NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[Inventory_Account_Note_I] [numeric] (19, 5) NOT NULL,
[Variance_Account_Note_In] [numeric] (19, 5) NOT NULL,
[BM_Component_Errors] [binary] (4) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BM30300] ADD CONSTRAINT [PKBM30300] PRIMARY KEY NONCLUSTERED  ([TRX_ID], [Component_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BM30300] ON [dbo].[BM30300] ([Component_ID], [ITEMNMBR], [LOCNCODE], [TRX_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BM30300] ON [dbo].[BM30300] ([ITEMNMBR], [LOCNCODE], [TRX_ID], [Component_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4BM30300] ON [dbo].[BM30300] ([TRX_ID], [Parent_Component_ID], [Component_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[TRX_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[Component_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[Parent_Component_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Location_Code_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Stock_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Assemble_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[BM_Stock_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[Cost_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[Inventory_Account_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[Variance_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[Variance_Account_Reference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Design_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[Scrap_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[STNDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Standard_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Extended_Standard_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Extended_Standard_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Ext_Assemble_Qty_Posting_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Ext_Stock_Receipt_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Ext_Stock_Qty_Posting_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Ext_Subasm_Posting_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Ext_Subasm_Receipt_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[BM_Component_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[Lvl]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Assemble_Serial_Lot_Count]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Stock_Serial_Lot_Count]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Inventory_Account_Note_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30300].[Variance_Account_Note_In]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30300].[BM_Component_Errors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30300].[BIN]'
GO
GRANT SELECT ON  [dbo].[BM30300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM30300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM30300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM30300] TO [DYNGRP]
GO
