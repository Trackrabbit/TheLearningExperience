SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[PurchaseOrderStatus] AS select ['Purchasing Receipt Line Quantities'].[Status] as 'Status', rtrim(['Purchasing Receipt Line Quantities'].[TRXLOCTN]) as 'TRX Location', rtrim(['Purchasing Receipt Line Quantities'].[UOFM]) as 'U Of M', ['Purchasing Receipt Line Quantities'].[POLNENUM] as 'PO Line Number', rtrim(['Purchasing Receipt Line Quantities'].[ITEMNMBR]) as 'Item Number', rtrim(['Purchasing Receipt Line Quantities'].[PONUMBER]) as 'PO Number', 'QTY Type' = dbo.DYN_FUNC_QTY_Type(['Purchasing Receipt Line Quantities'].[QTYTYPE]), ['Purchasing Receipt Line Quantities'].[APPYTYPE] as 'Apply Type', rtrim(['Purchasing Receipt Line Quantities'].[JOBNUMBR]) as 'Job Number', rtrim(['Purchasing Receipt Line Quantities'].[VENDORID]) as 'Vendor ID', rtrim(['Purchasing Receipt Line Quantities'].[COSTCODE]) as 'Cost Code', ['Purchasing Receipt Line Quantities'].[RCTSEQNM] as 'Receipt SEQ Number', rtrim(['Purchasing Receipt Line Quantities'].[Product_Indicator]) as 'Product Indicator', ['Purchasing Receipt Line Quantities'].[DATERECD] as 'Date Received', ['Purchasing Receipt Line Quantities'].[RCPTLNNM] as 'Receipt Line Number', rtrim(['Purchasing Receipt Line Quantities'].[POPRCTNM]) as 'POP Receipt Number', ['Purchasing Receipt Line Quantities'].[QTYREJ] as 'QTY Rejected', ['Purchasing Receipt Line Quantities'].[QTYINVCD] as 'QTY Invoiced', ['Purchasing Receipt Line Quantities'].[QTYSHPPD] as 'QTY Shipped',  'Item Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppItemID(1,['Purchasing Receipt Line Quantities'].[ITEMNMBR],'' ), 'Vendor ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppVendorID(1,['Purchasing Receipt Line Quantities'].[VENDORID] )  from [POP10500] as ['Purchasing Receipt Line Quantities'] with (NOLOCK)                    
GO
GRANT SELECT ON  [dbo].[PurchaseOrderStatus] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PurchaseOrderStatus] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PurchaseOrderStatus] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PurchaseOrderStatus] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PurchaseOrderStatus] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[PurchaseOrderStatus] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[PurchaseOrderStatus] TO [rpt_purchasing manager]
GO
