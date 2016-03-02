SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10300SI] (@TRX_ID char(19), @Component_ID int, @Parent_Component_ID int, @ITEMNMBR char(31), @ITEMDESC char(101), @UOFM char(9), @LOCNCODE char(11), @Location_Code_Note_Index numeric(19,5), @Stock_Quantity numeric(19,5), @Assemble_Quantity numeric(19,5), @ATYALLOC numeric(19,5), @BM_Stock_Method smallint, @Cost_Type smallint, @INVINDX int, @Inventory_Account_Reference char(31), @Inventory_Account_Note_I numeric(19,5), @Variance_Index int, @Variance_Account_Reference char(31), @Variance_Account_Note_In numeric(19,5), @Design_Quantity numeric(19,5), @Scrap_Percentage smallint, @STNDCOST numeric(19,5), @Standard_Quantity numeric(19,5), @Extended_Standard_Cost numeric(19,5), @Extended_Standard_Quantity numeric(19,5), @Ext_Assemble_Qty_Posting_Cost numeric(19,5), @Ext_Stock_Receipt_Cost numeric(19,5), @Ext_Stock_Qty_Posting_Cost numeric(19,5), @Ext_Subasm_Posting_Cost numeric(19,5), @Ext_Subasm_Receipt_Cost numeric(19,5), @BM_Component_Type smallint, @Lvl smallint, @QTYBSUOM numeric(19,5), @Assemble_Serial_Lot_Count numeric(19,5), @Stock_Serial_Lot_Count numeric(19,5), @Temp_Allocated_Quantity numeric(19,5), @Temp_Assemble_Quantity numeric(19,5), @Temp_Extended_Assemble_Q numeric(19,5), @Temp_Location_Code char(11), @Temp_Stock_Quantity numeric(19,5), @Temp_Extended_Stock_Quan numeric(19,5), @DECPLQTY smallint, @DECPLCUR smallint, @ITMTRKOP smallint, @NOTEINDX numeric(19,5), @BM_Component_Errors binary(4), @TRXSORCE char(13), @EXTQTYAL numeric(19,5), @EXTQTYSEL numeric(19,5), @Temp_Extended_Standard_Q numeric(19,5), @Temp_Existing_Quantity_A numeric(19,5), @Incl smallint, @BM_Component_Options binary(4), @BIN char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .BM10300 (TRX_ID, Component_ID, Parent_Component_ID, ITEMNMBR, ITEMDESC, UOFM, LOCNCODE, Location_Code_Note_Index, Stock_Quantity, Assemble_Quantity, ATYALLOC, BM_Stock_Method, Cost_Type, INVINDX, Inventory_Account_Reference, Inventory_Account_Note_I, Variance_Index, Variance_Account_Reference, Variance_Account_Note_In, Design_Quantity, Scrap_Percentage, STNDCOST, Standard_Quantity, Extended_Standard_Cost, Extended_Standard_Quantity, Ext_Assemble_Qty_Posting_Cost, Ext_Stock_Receipt_Cost, Ext_Stock_Qty_Posting_Cost, Ext_Subasm_Posting_Cost, Ext_Subasm_Receipt_Cost, BM_Component_Type, Lvl, QTYBSUOM, Assemble_Serial_Lot_Count, Stock_Serial_Lot_Count, Temp_Allocated_Quantity, Temp_Assemble_Quantity, Temp_Extended_Assemble_Q, Temp_Location_Code, Temp_Stock_Quantity, Temp_Extended_Stock_Quan, DECPLQTY, DECPLCUR, ITMTRKOP, NOTEINDX, BM_Component_Errors, TRXSORCE, EXTQTYAL, EXTQTYSEL, Temp_Extended_Standard_Q, Temp_Existing_Quantity_A, Incl, BM_Component_Options, BIN) VALUES ( @TRX_ID, @Component_ID, @Parent_Component_ID, @ITEMNMBR, @ITEMDESC, @UOFM, @LOCNCODE, @Location_Code_Note_Index, @Stock_Quantity, @Assemble_Quantity, @ATYALLOC, @BM_Stock_Method, @Cost_Type, @INVINDX, @Inventory_Account_Reference, @Inventory_Account_Note_I, @Variance_Index, @Variance_Account_Reference, @Variance_Account_Note_In, @Design_Quantity, @Scrap_Percentage, @STNDCOST, @Standard_Quantity, @Extended_Standard_Cost, @Extended_Standard_Quantity, @Ext_Assemble_Qty_Posting_Cost, @Ext_Stock_Receipt_Cost, @Ext_Stock_Qty_Posting_Cost, @Ext_Subasm_Posting_Cost, @Ext_Subasm_Receipt_Cost, @BM_Component_Type, @Lvl, @QTYBSUOM, @Assemble_Serial_Lot_Count, @Stock_Serial_Lot_Count, @Temp_Allocated_Quantity, @Temp_Assemble_Quantity, @Temp_Extended_Assemble_Q, @Temp_Location_Code, @Temp_Stock_Quantity, @Temp_Extended_Stock_Quan, @DECPLQTY, @DECPLCUR, @ITMTRKOP, @NOTEINDX, @BM_Component_Errors, @TRXSORCE, @EXTQTYAL, @EXTQTYSEL, @Temp_Extended_Standard_Q, @Temp_Existing_Quantity_A, @Incl, @BM_Component_Options, @BIN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10300SI] TO [DYNGRP]
GO