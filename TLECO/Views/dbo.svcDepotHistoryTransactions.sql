SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcDepotHistoryTransactions] as (  select 1 as 'HISTORY',  0 as 'SOURCE',  0 as 'DOCTYPE',   REPLICATE('X', 21) AS 'DOCNUMBR',  REPLICATE('X', 21) as 'DOCTYNAM',  REPLICATE('X', 3) as 'WOSTAT',  REPLICATE('X', 10) as 'WOTYPE',  REPLICATE('X', 30) as 'ITEMNMBR',  REPLICATE('X', 10) as 'LOCNCODE',  GETDATE() AS 'ENTDTE',  GETDATE() AS 'COMPDTE',  REPLICATE('X', 10) as 'OFFID',  REPLICATE('X', 15) as 'STATIONID',  REPLICATE('X', 15) as 'ROUTEID',  9999999999999.99999 as 'DOCAMNT',  REPLICATE('X', 15) as 'CUSTNMBR',  0 as 'MKTOPROC',  0 as 'InfoValue'  where (1 = 0)  UNION ALL   select 1 as 'HISTORY',  32 as 'SOURCE',  ['Depot'].[WORECTYPE] as 'DOCTYPE',   rtrim(['Depot'].[WORKORDNUM]) AS 'DOCNUMBR',  '' as 'DOCTYNAM',  rtrim(['Depot'].[WOSTAT]) as 'WOSTAT',  rtrim(['Depot'].[WOTYPE]) as 'WOTYPE',  rtrim(['Depot'].IBITEMNUM) as 'ITEMNMBR',  rtrim(['Depot'].[LOCNCODE]) as 'LOCNCODE',  ['Depot'].[ENTDTE] AS 'ENTDTE',  ['Depot'].[COMPDTE] AS 'COMPDTE',  rtrim(['Depot'].[OFFID]) as 'OFFID',  rtrim(['Depot'].[STATIONID]) as 'STATIONID',  rtrim(['Depot'].[ROUTEID]) as 'ROUTEID',  0 as 'DOCAMNT',  rtrim(['Depot'].[CUSTNMBR]) as 'CUSTNMBR',  0 as 'MKTOPROC',  0 as 'InfoValue'  from [SVC06100] as ['Depot'] with (NOLOCK)  where WORECTYPE = 3 )    
GO
GRANT SELECT ON  [dbo].[svcDepotHistoryTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcDepotHistoryTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcDepotHistoryTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcDepotHistoryTransactions] TO [DYNGRP]
GO
