SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcRTVTransactions] as (  select 0 as 'HISTORY',  0 as 'SOURCE',  REPLICATE('X', 21) AS 'DOCNUMBR',  REPLICATE('X', 21) as 'DOCTYNAM',  REPLICATE('X', 10) as 'RTV_Type',  REPLICATE('X', 3) as 'RTV_Return_Status',  REPLICATE('X', 15) as 'VENDORID',  REPLICATE('X', 65) as 'VENDNAME',  REPLICATE('X', 15) as 'ADRSCODE',  REPLICATE('X', 15) as 'CURNCYID',  0 as 'CURRNIDX',  GETDATE() AS 'ENTDTE',  GETDATE() AS 'Shipped_Date',  GETDATE() AS 'RETUDATE',  REPLICATE('X', 10) as 'LOCNCODE',  9999999999999.99999 as 'DOCAMNT',  REPLICATE('X', 30) as 'ITEMNMBR',  0 as 'RTV_Status',  0 as 'MKTOPROC',  0 as 'InfoValue'  where (1 = 0)  UNION ALL   select 0 as 'HISTORY',  777 as 'SOURCE',  rtrim(['RTV'].[RTV_Number]) AS 'DOCNUMBR',  '' as 'DOCTYNAM',  rtrim(['RTV'].[RTV_Type]) as 'RTV_Type',  rtrim(['RTV'].[RTV_Return_Status]) as 'RTV_Return_Status',  rtrim(['RTV'].[VENDORID]) as 'VENDORID',  rtrim(['RTV'].[VENDNAME]) as 'VENDNAME',  rtrim(['RTV'].[ADRSCODE]) as 'ADRSCODE',  rtrim(['RTV'].[CURNCYID]) as 'CURNCYID',  ['RTV'].[CURRNIDX] as 'CURRNIDX',  ['RTV'].[ENTDTE] AS 'ENTDTE',  ['RTV'].[Shipped_Date] AS 'Shipped_Date',  ['RTV'].[COMPDTE] AS 'RETUDATE',  rtrim(['RTV'].[LOCNCODE]) as 'LOCNCODE',  0 as 'DOCAMNT',  '' as 'ITEMNMBR',  ['RTV'].[RTV_Status] as 'RTV_Status',  0 as 'MKTOPROC',  0 as 'InfoValue'  from [SVC05600] as ['RTV'] with (NOLOCK) )    
GO
GRANT SELECT ON  [dbo].[svcRTVTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcRTVTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcRTVTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcRTVTransactions] TO [DYNGRP]
GO
