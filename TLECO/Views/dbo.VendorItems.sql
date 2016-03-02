SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[VendorItems] AS select rtrim(['Item Vendor Master'].[VENDORID]) as 'Vendor ID', rtrim(['Item Vendor Master'].[VNDITDSC]) as 'Vendor Item Description', rtrim(['Item Vendor Master'].[VNDITNUM]) as 'Vendor Item Number', rtrim(['Item Vendor Master'].[ITEMNMBR]) as 'Item Number',  ['Item Vendor Master'].[AVRGLDTM] as 'Average Lead Time', ['Item Vendor Master'].[CURRNIDX] as 'Currency Index', ['Item Vendor Master'].[ECORDQTY] as 'Economic ORD QTY', 'Free On Board' = dbo.DYN_FUNC_Free_On_Board(['Item Vendor Master'].[FREEONBOARD]), ['Item Vendor Master'].[ITMVNDTY] as 'Item Vendor Type', rtrim(['Item Vendor Master'].[Last_Currency_ID]) as 'Last Currency ID', ['Item Vendor Master'].[LSTORDDT] as 'Last ORD Date', ['Item Vendor Master'].[LSORDQTY] as 'Last ORD QTY', ['Item Vendor Master'].[Last_Originating_Cost] as 'Last Originating Cost', ['Item Vendor Master'].[LRCPTCST] as 'Last RCPT Cost', ['Item Vendor Master'].[LSRCPTDT] as 'Last RCPT Date', ['Item Vendor Master'].[LRCPTQTY] as 'Last RCPT QTY', ['Item Vendor Master'].[MAXORDQTY] as 'Maximum ORD QTY', ['Item Vendor Master'].[MINORQTY] as 'Minimum ORD QTY', ['Item Vendor Master'].[NORCTITM] as 'Number Of RCPTS For Item', ['Item Vendor Master'].[PLANNINGLEADTIME] as 'Planning Lead Time', rtrim(['Item Vendor Master'].[PRCHSUOM]) as 'Purchasing U Of M', ['Item Vendor Master'].[QTY_Drop_Shipped] as 'QTY Drop Shipped', ['Item Vendor Master'].[QTYONORD] as 'QTY On Order', ['Item Vendor Master'].[QTYRQSTN] as 'QTY Requisitioned', 'Item Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppItemID(1,['Item Vendor Master'].[ITEMNMBR],'' ), 'Vendor ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppVendorID(1,['Item Vendor Master'].[VENDORID] )           from [IV00103] as ['Item Vendor Master'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[VendorItems] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[VendorItems] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[VendorItems] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[VendorItems] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[VendorItems] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[VendorItems] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[VendorItems] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[VendorItems] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[VendorItems] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[VendorItems] TO [rpt_warehouse manager]
GO
