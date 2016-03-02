SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcRMAHistoryTransactions] as (  select 1 as 'HISTORY',  0 as 'SOURCE',  0 as 'DOCTYPE',   REPLICATE('X', 21) AS 'DOCNUMBR',  0 as 'RETORIG',   REPLICATE('X', 21) as 'DOCTYNAM',  REPLICATE('X', 10) as 'RETTYPE',  REPLICATE('X', 3) as 'RETSTAT',  REPLICATE('X', 15) as 'CUSTNMBR',  REPLICATE('X', 65) as 'CUSTNAME',  REPLICATE('X', 15) as 'ADRSCODE',  REPLICATE('X', 15) as 'CURNCYID',  0 as 'CURRNIDX',  REPLICATE('X', 21) as 'CSTPONBR',  GETDATE() AS 'ENTDTE',  GETDATE() AS 'RETUDATE',  REPLICATE('X', 10) as 'OFFID',  REPLICATE('X', 10) as 'LOCNCODE',  9999999999999.99999 as 'DOCAMNT',  REPLICATE('X', 10) as 'RETREF',  0 as 'RMA_Status',  0 as 'MKTOPROC',  0 as 'InfoValue'  where (1 = 0)  UNION ALL   select 1 as 'HISTORY',  33 as 'SOURCE',  ['RMA'].[Return_Record_Type] as 'DOCTYPE',   rtrim(['RMA'].[RETDOCID]) AS 'DOCNUMBR',  ['RMA'].[RETORIG] as 'RETORIG',   '' as 'DOCTYNAM',  rtrim(['RMA'].[RETTYPE]) as 'RETTYPE',  rtrim(['RMA'].[RETSTAT]) as 'RETSTAT',  rtrim(['RMA'].[CUSTNMBR]) as 'CUSTNMBR',  rtrim(['RMA'].[CUSTNAME]) as 'CUSTNAME',  rtrim(['RMA'].[ADRSCODE]) as 'ADRSCODE',  rtrim(['RMA'].[CURNCYID]) as 'CURNCYID',  ['RMA'].[CURRNIDX] as 'CURRNIDX',  rtrim(['RMA'].[CSTPONBR]) as 'CSTPONBR',  ['RMA'].[ENTDTE] AS 'ENTDTE',  ['RMA'].[RETUDATE] AS 'RETUDATE',  rtrim(['RMA'].[OFFID]) as 'OFFID',  rtrim(['RMA'].[LOCNCODE]) as 'LOCNCODE',  0 as 'DOCAMNT',  rtrim(['RMA'].[RETREF]) as 'RETREF',  ['RMA'].[RMA_Status] as 'RMA_Status',  0 as 'MKTOPROC',  0 as 'InfoValue'  from [SVC35000] as ['RMA'] with (NOLOCK)  where Return_Record_Type = 2 )    
GO
GRANT SELECT ON  [dbo].[svcRMAHistoryTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcRMAHistoryTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcRMAHistoryTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcRMAHistoryTransactions] TO [DYNGRP]
GO
