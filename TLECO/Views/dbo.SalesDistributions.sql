SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[SalesDistributions] AS select 'SOP Type' = dbo.DYN_FUNC_SOP_Type(['Sales Distribution Work and History'].[SOPTYPE]), rtrim(['Sales Distribution Work and History'].[SOPNUMBE]) as 'SOP Number', ['Sales Distribution Work and History'].[SEQNUMBR] as 'Sequence Number', ['Sales Distribution Work and History'].[CRDTAMNT] as 'Credit Amount', ['Sales Distribution Work and History'].[DEBITAMT] as 'Debit Amount', rtrim(['Sales Distribution Work and History'].[TRXSORCE]) as 'TRX Source', 'Distribution Type' = dbo.DYN_FUNC_SOP_Distribution_Type(['Sales Distribution Work and History'].[DISTTYPE]), (select rtrim([ACTNUMST]) from [GL00105] as ['Account Index Master'] where ['Account Index Master'].[ACTINDX] = ['Sales Distribution Work and History'].[ACTINDX]) as 'Account Number', rtrim(['Account Master'].[ACTDESCR]) as 'Account Description', ['Sales Transaction History'].[GLPOSTDT] as 'Posted Date', case ISNULL(['Sales Transaction Work'].[CUSTNAME],'empty') WHEN 'empty'  THEN rtrim(['Sales Transaction History'].[CUSTNAME])  ELSE rtrim(['Sales Transaction Work'].[CUSTNAME]) END as 'Customer Name', case ISNULL(['Sales Transaction Work'].[CUSTNMBR],'empty') WHEN 'empty'  THEN rtrim(['Sales Transaction History'].[CUSTNMBR])  ELSE rtrim(['Sales Transaction Work'].[CUSTNMBR]) END as 'Customer Number', case ISNULL(['Sales Transaction Work'].[CUSTNMBR],'empty') WHEN 'empty'  THEN rtrim(['Sales Transaction History'].[DOCID])  ELSE rtrim(['Sales Transaction Work'].[DOCID]) END as 'Document ID',  'Account Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppAccountIndex(1,['Sales Distribution Work and History'].[ACTINDX] ), case ISNULL(['Sales Transaction Work'].[CUSTNMBR],'empty') WHEN 'empty'  THEN 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['Sales Transaction History'].[CUSTNMBR] )  ELSE 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['Sales Transaction Work'].[CUSTNMBR] ) END as 'Customer Number For Drillback', case ISNULL( ['Sales Distribution Work and History'].[TRXSORCE],'') WHEN ''  THEN 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppSalesOrder(1,1,11,'',0,0,['Sales Transaction Work'].[CUSTNMBR],'',0,'',['Sales Transaction Work'].[SOPTYPE],['Sales Transaction Work'].[SOPNUMBE] )  ELSE 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppSalesOrder(1,3,11,'',0,0,['Sales Transaction History'].[CUSTNMBR],'',0,'',['Sales Transaction History'].[SOPTYPE],['Sales Transaction History'].[SOPNUMBE] ) END as 'SOP Number For Drillback'  from [SOP10102] as ['Sales Distribution Work and History'] with (NOLOCK) left outer join [GL00100] as ['Account Master'] with (NOLOCK) on ['Sales Distribution Work and History'].[ACTINDX] = ['Account Master'].[ACTINDX] left outer join [SOP30200] as ['Sales Transaction History'] with (NOLOCK) on ['Sales Distribution Work and History'].[SOPTYPE] = ['Sales Transaction History'].[SOPTYPE]  and ['Sales Distribution Work and History'].[SOPNUMBE] = ['Sales Transaction History'].[SOPNUMBE] left outer join [SOP10100] as ['Sales Transaction Work'] with (NOLOCK) on ['Sales Distribution Work and History'].[SOPNUMBE] = ['Sales Transaction Work'].[SOPNUMBE]  and ['Sales Distribution Work and History'].[SOPTYPE] = ['Sales Transaction Work'].[SOPTYPE]                    
GO
GRANT SELECT ON  [dbo].[SalesDistributions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SalesDistributions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SalesDistributions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SalesDistributions] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SalesDistributions] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[SalesDistributions] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[SalesDistributions] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[SalesDistributions] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[SalesDistributions] TO [rpt_order processor]
GO
