SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[svcContractHistoryTransactions] as (  select 1 as 'HISTORY',  0 as 'SOURCE',  0 as 'DOCTYPE',   REPLICATE('X', 21) AS 'DOCNUMBR',  0 as  'SVC_Contract_Version',  REPLICATE('X', 21) as 'DOCTYNAM',  REPLICATE('X', 10) as 'CNTTYPE',  0 as 'BILCYC',   0 as 'SVC_Liability_Type',  REPLICATE('X', 15) as 'CUSTNMBR',  REPLICATE('X', 65) as 'CUSTNAME',  REPLICATE('X', 15) as 'ADRSCODE',  REPLICATE('X', 15) as 'CURNCYID',  0 as 'CURRNIDX',  REPLICATE('X', 21) as 'CSTPONBR',  GETDATE() AS 'ENTDTE',  GETDATE() AS 'ENDDATE',  REPLICATE('X', 10) as 'PRICSHED',  REPLICATE('X', 15) as 'SLPRSNID',  9999999999999.99999 as 'DOCAMNT',  GETDATE() as 'NXTBLDTE',  0 as 'BILSTAT',  0 as 'SVC_Evergreen_Contract',  0 as 'MKTOPROC',  0 as 'InfoValue'  where (1 = 0)  UNION ALL   select 1 as 'HISTORY',  18 as 'SOURCE',  ['Contract'].[CONSTS] as 'DOCTYPE',   rtrim(['Contract'].[CONTNBR]) AS 'DOCNUMBR',  ['Contract'].SVC_Contract_Version as 'SVC_Contract_Version',  '' as 'DOCTYNAM',  rtrim(['Contract'].[CNTTYPE]) as 'CNTTYPE',  ['Contract'].[BILCYC] as 'BILCYC',  ['Contract'].[SVC_Liability_Type] as 'SVC_Liability_Type',  rtrim(['Contract'].[CUSTNMBR]) as 'CUSTNMBR',  rtrim(RM.[CUSTNAME]) as 'CUSTNAME',  rtrim(['Contract'].[ADRSCODE]) as 'ADRSCODE',  rtrim(['Contract'].[CURNCYID]) as 'CURNCYID',  ['Contract'].[CURRNIDX] as 'CURRNIDX',  rtrim(['Contract'].[PORDNMBR]) as 'CSTPONBR',  ['Contract'].[STRTDATE] AS 'ENTDTE',  ['Contract'].[ENDDATE] AS 'ENDDATE',  rtrim(['Contract'].[PRICSHED]) as 'PRICSHED',  rtrim(['Contract'].[SLPRSNID]) as 'SLPRSNID',  ['Contract'].TOTAL as 'DOCAMNT',  ['Contract'].NXTBLDTE as 'NXTBLDTE',  0 as 'BILSTAT',  0 as 'SVC_Evergreen_Contract',  0 as 'MKTOPROC',  0 as 'InfoValue'  from [SVC30600] as ['Contract'] with (NOLOCK) left join RM00101 as RM on ['Contract'].CUSTNMBR = RM.CUSTNMBR   where CONSTS < 4 )    
GO
GRANT SELECT ON  [dbo].[svcContractHistoryTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[svcContractHistoryTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[svcContractHistoryTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[svcContractHistoryTransactions] TO [DYNGRP]
GO
