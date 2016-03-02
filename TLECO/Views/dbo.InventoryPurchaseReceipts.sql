SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[InventoryPurchaseReceipts] AS select rtrim(['Inventory Purchase Receipts Work'].[ITEMNMBR]) as 'Item Number', ['Inventory Purchase Receipts Work'].[DATERECD] as 'Date Received', ['Inventory Purchase Receipts Work'].[QTYRECVD] as 'QTY Received', ['Inventory Purchase Receipts Work'].[QTYSOLD] as 'QTY Sold', ['Inventory Purchase Receipts Work'].[UNITCOST] as 'Unit Cost', 'QTY Type' = dbo.DYN_FUNC_QTY_Type(['Inventory Purchase Receipts Work'].[QTYTYPE]), rtrim(['Inventory Purchase Receipts Work'].[TRXLOCTN]) as 'TRX Location', 'Purchase Receipt Type' = dbo.DYN_FUNC_Purchase_Receipt_Type(['Inventory Purchase Receipts Work'].[PCHSRCTY]), rtrim(['Inventory Purchase Receipts Work'].[RCPTNMBR]) as 'Receipt Number', rtrim(['Inventory Purchase Receipts Work'].[VENDORID]) as 'Vendor ID', rtrim(['Inventory Purchase Receipts Work'].[PORDNMBR]) as 'Purchase Order Number',  'Landed Cost' = dbo.DYN_FUNC_Boolean_All(['Inventory Purchase Receipts Work'].[Landed_Cost]), ['Inventory Purchase Receipts Work'].[QTYRESERVED] as 'QTY Reserved', ['Inventory Purchase Receipts Work'].[RCTSEQNM] as 'Receipt SEQ Number', 'Receipt Sold' = dbo.DYN_FUNC_Boolean_All(['Inventory Purchase Receipts Work'].[RCPTSOLD]), rtrim(['Item Master'].[ITMGEDSC]) as 'Item Generic Description', rtrim(['Item Master'].[ITEMDESC]) as 'Item Description', rtrim(['Item Master'].[USCATVLS_1]) as 'User Category Value 1', rtrim(['Item Master'].[USCATVLS_2]) as 'User Category Value 2', rtrim(['Item Master'].[USCATVLS_3]) as 'User Category Value 3', rtrim(['Item Master'].[USCATVLS_4]) as 'User Category Value 4', rtrim(['Item Master'].[USCATVLS_5]) as 'User Category Value 5', rtrim(['Item Master'].[USCATVLS_6]) as 'User Category Value 6', 'Item Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppItemID(1,['Inventory Purchase Receipts Work'].[ITEMNMBR],'' ), 'Vendor ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppVendorID(1,['Inventory Purchase Receipts Work'].[VENDORID] )           from [IV10200] as ['Inventory Purchase Receipts Work'] with (NOLOCK) left outer join [IV00101] as ['Item Master'] with (NOLOCK) on ['Inventory Purchase Receipts Work'].[ITEMNMBR] = ['Item Master'].[ITEMNMBR] 
GO
GRANT SELECT ON  [dbo].[InventoryPurchaseReceipts] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[InventoryPurchaseReceipts] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[InventoryPurchaseReceipts] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[InventoryPurchaseReceipts] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[InventoryPurchaseReceipts] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[InventoryPurchaseReceipts] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[InventoryPurchaseReceipts] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[InventoryPurchaseReceipts] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[InventoryPurchaseReceipts] TO [rpt_warehouse manager]
GO
