SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM30300SS_2] (@Component_ID int, @ITEMNMBR char(31), @LOCNCODE char(11), @TRX_ID char(19)) AS  set nocount on SELECT TOP 1  TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Variance_Index, Variance_Account_Reference, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, Inventory_Account_Note_I, Variance_Account_Note_In, BM_Component_Errors, TRXSORCE, BIN, DEX_ROW_ID FROM .BM30300 WHERE Component_ID = @Component_ID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND TRX_ID = @TRX_ID ORDER BY Component_ID ASC, ITEMNMBR ASC, LOCNCODE ASC, TRX_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM30300SS_2] TO [DYNGRP]
GO
