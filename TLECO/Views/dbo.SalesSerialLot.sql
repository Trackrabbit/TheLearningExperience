SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[SalesSerialLot] AS select 'SOP Type' = dbo.DYN_FUNC_SOP_Type(['Sales Serial/Lot Work and History'].[SOPTYPE]), rtrim(['Sales Serial/Lot Work and History'].[SOPNUMBE]) as 'SOP Number', ['Sales Serial/Lot Work and History'].[LNITMSEQ] as 'Line Item Sequence', ['Sales Serial/Lot Work and History'].[CMPNTSEQ] as 'Component Sequence', 'QTY Type' = dbo.DYN_FUNC_QTY_Type(['Sales Serial/Lot Work and History'].[QTYTYPE]), ['Sales Serial/Lot Work and History'].[SLTSQNUM] as 'Serial/Lot Seq Number', 'Posted' = dbo.DYN_FUNC_Boolean_All(['Sales Serial/Lot Work and History'].[POSTED]), rtrim(['Sales Serial/Lot Work and History'].[SERLTNUM]) as 'Serial/Lot Number', rtrim(['Sales Serial/Lot Work and History'].[ITEMNMBR]) as 'Item Number', ['Sales Serial/Lot Work and History'].[SERLTQTY] as 'Serial/Lot QTY',  'Item Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppItemID(1,['Sales Serial/Lot Work and History'].[ITEMNMBR],'' ), case ISNULL( ['Sales Serial/Lot Work and History'].[TRXSORCE],'') WHEN ''  THEN 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppSalesOrder(1,1,11,'',0,0,'','',0,'',['Sales Serial/Lot Work and History'].[SOPTYPE],['Sales Serial/Lot Work and History'].[SOPNUMBE] )  ELSE 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppSalesOrder(1,3,11,'',0,0,'','',0,'',['Sales Serial/Lot Work and History'].[SOPTYPE],['Sales Serial/Lot Work and History'].[SOPNUMBE] ) END as 'SOP Number For Drillback'  from [SOP10201] as ['Sales Serial/Lot Work and History'] with (NOLOCK)                    
GO
GRANT SELECT ON  [dbo].[SalesSerialLot] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SalesSerialLot] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SalesSerialLot] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SalesSerialLot] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SalesSerialLot] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[SalesSerialLot] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[SalesSerialLot] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[SalesSerialLot] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[SalesSerialLot] TO [rpt_sales manager]
GO
GRANT SELECT ON  [dbo].[SalesSerialLot] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[SalesSerialLot] TO [rpt_warehouse manager]
GO
