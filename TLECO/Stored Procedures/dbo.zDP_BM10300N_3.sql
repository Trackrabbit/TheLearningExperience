SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10300N_3] (@BS int, @Component_ID int, @ITEMNMBR char(31), @LOCNCODE char(11), @TRX_ID char(19), @Component_ID_RS int, @ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @TRX_ID_RS char(19), @Component_ID_RE int, @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11), @TRX_ID_RE char(19)) AS  set nocount on IF @Component_ID_RS IS NULL BEGIN SELECT TOP 25  TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, ATYALLOC, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Inventory_Account_Note_I, Variance_Index, Variance_Account_Reference, Variance_Account_Note_In, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, Temp_Allocated_Quantity, Temp_Assemble_Quantity, Temp_Extended_Assemble_Q, Temp_Location_Code, Temp_Stock_Quantity, Temp_Extended_Stock_Quan, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, BM_Component_Errors, TRXSORCE, EXTQTYAL, EXTQTYSEL, Temp_Extended_Standard_Q, Temp_Existing_Quantity_A, Incl, BM_Component_Options, BIN, DEX_ROW_ID FROM .BM10300 WHERE ( Component_ID = @Component_ID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND TRX_ID > @TRX_ID OR Component_ID = @Component_ID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR Component_ID = @Component_ID AND ITEMNMBR > @ITEMNMBR OR Component_ID > @Component_ID ) ORDER BY Component_ID ASC, ITEMNMBR ASC, LOCNCODE ASC, TRX_ID ASC END ELSE IF @Component_ID_RS = @Component_ID_RE BEGIN SELECT TOP 25  TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, ATYALLOC, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Inventory_Account_Note_I, Variance_Index, Variance_Account_Reference, Variance_Account_Note_In, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, Temp_Allocated_Quantity, Temp_Assemble_Quantity, Temp_Extended_Assemble_Q, Temp_Location_Code, Temp_Stock_Quantity, Temp_Extended_Stock_Quan, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, BM_Component_Errors, TRXSORCE, EXTQTYAL, EXTQTYSEL, Temp_Extended_Standard_Q, Temp_Existing_Quantity_A, Incl, BM_Component_Options, BIN, DEX_ROW_ID FROM .BM10300 WHERE Component_ID = @Component_ID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE AND ( Component_ID = @Component_ID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND TRX_ID > @TRX_ID OR Component_ID = @Component_ID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR Component_ID = @Component_ID AND ITEMNMBR > @ITEMNMBR OR Component_ID > @Component_ID ) ORDER BY Component_ID ASC, ITEMNMBR ASC, LOCNCODE ASC, TRX_ID ASC END ELSE BEGIN SELECT TOP 25  TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, ATYALLOC, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Inventory_Account_Note_I, Variance_Index, Variance_Account_Reference, Variance_Account_Note_In, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, Temp_Allocated_Quantity, Temp_Assemble_Quantity, Temp_Extended_Assemble_Q, Temp_Location_Code, Temp_Stock_Quantity, Temp_Extended_Stock_Quan, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, BM_Component_Errors, TRXSORCE, EXTQTYAL, EXTQTYSEL, Temp_Extended_Standard_Q, Temp_Existing_Quantity_A, Incl, BM_Component_Options, BIN, DEX_ROW_ID FROM .BM10300 WHERE Component_ID BETWEEN @Component_ID_RS AND @Component_ID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE AND ( Component_ID = @Component_ID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND TRX_ID > @TRX_ID OR Component_ID = @Component_ID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR Component_ID = @Component_ID AND ITEMNMBR > @ITEMNMBR OR Component_ID > @Component_ID ) ORDER BY Component_ID ASC, ITEMNMBR ASC, LOCNCODE ASC, TRX_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10300N_3] TO [DYNGRP]
GO
