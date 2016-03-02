SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM30300F_4] (@TRX_ID_RS char(19), @Parent_Component_ID_RS int, @Component_ID_RS int, @TRX_ID_RE char(19), @Parent_Component_ID_RE int, @Component_ID_RE int) AS  set nocount on IF @TRX_ID_RS IS NULL BEGIN SELECT TOP 25  TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Variance_Index, Variance_Account_Reference, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, Inventory_Account_Note_I, Variance_Account_Note_In, BM_Component_Errors, TRXSORCE, BIN, DEX_ROW_ID FROM .BM30300 ORDER BY TRX_ID ASC, Parent_Component_ID ASC, Component_ID ASC END ELSE IF @TRX_ID_RS = @TRX_ID_RE BEGIN SELECT TOP 25  TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Variance_Index, Variance_Account_Reference, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, Inventory_Account_Note_I, Variance_Account_Note_In, BM_Component_Errors, TRXSORCE, BIN, DEX_ROW_ID FROM .BM30300 WHERE TRX_ID = @TRX_ID_RS AND Parent_Component_ID BETWEEN @Parent_Component_ID_RS AND @Parent_Component_ID_RE AND Component_ID BETWEEN @Component_ID_RS AND @Component_ID_RE ORDER BY TRX_ID ASC, Parent_Component_ID ASC, Component_ID ASC END ELSE BEGIN SELECT TOP 25  TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Variance_Index, Variance_Account_Reference, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, Inventory_Account_Note_I, Variance_Account_Note_In, BM_Component_Errors, TRXSORCE, BIN, DEX_ROW_ID FROM .BM30300 WHERE TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE AND Parent_Component_ID BETWEEN @Parent_Component_ID_RS AND @Parent_Component_ID_RE AND Component_ID BETWEEN @Component_ID_RS AND @Component_ID_RE ORDER BY TRX_ID ASC, Parent_Component_ID ASC, Component_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM30300F_4] TO [DYNGRP]
GO
