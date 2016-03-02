SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcServiceTransactions] as (  select 0 as 'HISTORY',  0 as 'SOURCE',  0 as 'DOCTYPE',   REPLICATE('X', 21) AS 'DOCNUMBR',  REPLICATE('X', 21) as 'DOCTYNAM',  REPLICATE('X', 10) as 'SRVTYPE',  REPLICATE('X', 21) as 'SRVSTAT',  REPLICATE('X', 15) as 'CUSTNMBR',  REPLICATE('X', 65) as 'CUSTNAME',  REPLICATE('X', 15) as 'ADRSCODE',  REPLICATE('X', 15) as 'CURNCYID',  0 as 'CURRNIDX',  REPLICATE('X', 21) as 'CSTPONBR',  GETDATE() AS 'ENTDTE',  GETDATE() AS 'COMPDTE',  REPLICATE('X', 10) as 'TECHID',  REPLICATE('X', 10) as 'OFFID',  REPLICATE('X', 10) as 'SVCAREA',  REPLICATE('X', 10) as 'LOCNCODE',  9999999999999.99999 as 'DOCAMNT',  REPLICATE('X', 10) as 'CONTNBR',  REPLICATE('X', 60) as 'CNTCPRSN',  0 as 'priorityLevel',  0 as 'InfoValue',  0 as 'MKTOPROC'  where (1 = 0)  UNION ALL   select 0 as 'HISTORY',  17 as 'SOURCE',  ['Service Call'].[SRVRECTYPE] as 'DOCTYPE',   rtrim(['Service Call'].[CALLNBR]) AS 'DOCNUMBR',  '' as 'DOCTYNAM',  rtrim(['Service Call'].[SRVTYPE]) as 'SRVTYPE',  rtrim(['Service Call'].[SRVSTAT]) as 'SRVSTAT',  rtrim(['Service Call'].[CUSTNMBR]) as 'CUSTNMBR',  rtrim(['Service Call'].[CUSTNAME]) as 'CUSTNAME',  rtrim(['Service Call'].[ADRSCODE]) as 'ADRSCODE',  rtrim(['Service Call'].[CURNCYID]) as 'CURNCYID',  ['Service Call'].[CURRNIDX] as 'CURRNIDX',  rtrim(['Service Call'].[PORDNMBR]) as 'CSTPONBR',  ['Service Call'].[ENTDTE] AS 'ENTDTE',  ['Service Call'].[COMPDTE] AS 'COMPDTE',  rtrim(['Service Call'].[TECHID]) as 'TECHID',  rtrim(['Service Call'].[OFFID]) as 'OFFID',  rtrim(['Service Call'].[SVCAREA]) as 'SVCAREA',  '' as 'LOCNCODE',  ['Service Call'].TOTAL as 'DOCAMNT',  rtrim(['Service Call'].[CONTNBR]) as 'CONTNBR',  rtrim(['Service Call'].[CNTCPRSN]) as 'CNTCPRSN',  0 as 'priorityLevel',  0 as 'InfoValue',  0 as 'MKTOPROC'  from [SVC00200] as ['Service Call'] with (NOLOCK)  where SRVRECTYPE < 4 )    
GO
GRANT SELECT ON  [dbo].[svcServiceTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcServiceTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcServiceTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcServiceTransactions] TO [DYNGRP]
GO
