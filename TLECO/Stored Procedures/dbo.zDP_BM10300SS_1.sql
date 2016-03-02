SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10300SS_1] (@TRX_ID char(19), @Component_ID int) AS  set nocount on SELECT TOP 1  TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, ATYALLOC, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Inventory_Account_Note_I, Variance_Index, Variance_Account_Reference, Variance_Account_Note_In, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, Temp_Allocated_Quantity, Temp_Assemble_Quantity, Temp_Extended_Assemble_Q, Temp_Location_Code, Temp_Stock_Quantity, Temp_Extended_Stock_Quan, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, BM_Component_Errors, TRXSORCE, EXTQTYAL, EXTQTYSEL, Temp_Extended_Standard_Q, Temp_Existing_Quantity_A, Incl, BM_Component_Options, BIN, DEX_ROW_ID FROM .BM10300 WHERE TRX_ID = @TRX_ID AND Component_ID = @Component_ID ORDER BY TRX_ID ASC, Component_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10300SS_1] TO [DYNGRP]
GO
