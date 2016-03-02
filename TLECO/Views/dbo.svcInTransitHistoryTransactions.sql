SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcInTransitHistoryTransactions] as (  select 1 as 'HISTORY',  0 as 'SOURCE',  REPLICATE('X', 21) AS 'DOCNUMBR',  REPLICATE('X', 65) as 'CUSTNAME',  GETDATE() AS 'ENTDTE',  REPLICATE('X', 10) as 'TRNSFLOC',  REPLICATE('X', 10) as 'ITLOCN',  REPLICATE('X', 10) as 'LOCNCODE',  REPLICATE('X', 15) as 'SHIPMTHD',  REPLICATE('X', 10) as 'OFFID',  REPLICATE('X', 10) as 'TECHID',  0 as 'STATUS',  REPLICATE('X', 15) as 'DSCRPTN1',  GETDATE() AS 'ORDRDATE',  GETDATE() AS 'ETADTE',  0 as 'MKTOPROC',  0 as 'InfoValue'  where (1 = 0)  UNION ALL   select 1 as 'HISTORY',  778 as 'SOURCE',  rtrim(['InTransit'].[ORDDOCID]) AS 'DOCNUMBR',  rtrim(['InTransit'].[CUSTNAME]) as 'CUSTNAME',  ['InTransit'].[ORDRDATE] AS 'ENTDTE',  rtrim(['InTransit'].[TRNSFLOC]) as 'TRNSFLOC',  rtrim(['InTransit'].[ITLOCN]) as 'ITLOCN',  rtrim(['InTransit'].[LOCNCODE]) as 'LOCNCODE',  rtrim(['InTransit'].[SHIPMTHD]) as 'SHIPMTHD',  rtrim(['InTransit'].[OFFID]) as 'OFFID',  rtrim(['InTransit'].[TECHID]) as 'TECHID',  ['InTransit'].STATUS as 'STATUS',  '' as 'DSCRPTN1',  ['InTransit'].[ORDRDATE] AS 'ORDRDATE',  ['InTransit'].[ETADTE] AS 'ETADTE',  0 as 'MKTOPROC',  0 as 'InfoValue'  from [SVC30700] as ['InTransit'] with (NOLOCK) )    
GO
GRANT SELECT ON  [dbo].[svcInTransitHistoryTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcInTransitHistoryTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcInTransitHistoryTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcInTransitHistoryTransactions] TO [DYNGRP]
GO
