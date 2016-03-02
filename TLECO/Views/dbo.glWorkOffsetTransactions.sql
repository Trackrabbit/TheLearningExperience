SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[glWorkOffsetTransactions] as (  select   GETDATE() AS 'TRXDATE',  0 as 'JRNENTRY',  REPLICATE('X', 21) as 'DOCTYNAM',  0 as 'ACTINDX',  9999999999999.99999 as 'DEBITAMT',  9999999999999.99999 as 'CRDTAMNT',  REPLICATE('X', 11) as 'SOURCDOC',  REPLICATE('X', 13) as 'AUDITTRAIL',  REPLICATE('X', 31) as 'REFRENCE',  0 as 'SEQNUMBR',  0 as 'DCSTATUS',  0 as 'DOCTYPE',  0 as 'CURRNIDX',  9999999999999.99999 as 'RCTRXSEQ',  0 as 'QKOFSET',  0 as 'YEAR1',  0 as 'VOIDED',  9999999999999.99999 as 'NOTEINDX',  REPLICATE('X', 31) as 'STSDESCR',  0 as 'Ledger_ID',  0 as ORD,  REPLICATE('X', 15) as 'BACHNUMB',  REPLICATE('X', 15) as 'BCHSOURC',  GETDATE() as 'RVRSNGDT',  0 as 'InfoValue',  0 as 'MKTOPROC'  where (1 = 0)  UNION ALL  select   ['Quick Journal Work HDR'].TRXDATE AS 'TRXDATE',  ['Quick Journal Work HDR'].JRNENTRY as 'JRNENTRY',  '' as 'DOCTYNAM',  ['Quick Journal Work HDR'].OFFINDX as 'ACTINDX',  (select DEBITAMT = dbo.glCalcOffsetAmountForJE(JRNENTRY, 2, 0, BSNSFMID)),  (select CRDTAMNT = dbo.glCalcOffsetAmountForJE(JRNENTRY, 2, 1, BSNSFMID)),  ['Quick Journal Work HDR'].SOURCDOC as 'SOURCDOC',  ['Quick Journal Work HDR'].TRXSORCE as 'AUDITTRAIL',  ['Quick Journal Work HDR'].REFRENCE as 'REFRENCE',  ['Quick Journal Work HDR'].SQNCLINE as 'SEQNUMBR',  1 as 'DCSTATUS',   2 as 'DOCTYPE',   0 as 'CURRNIDX',  0 as 'RCTRXSEQ',  1 as 'QKOFSET',  0 as 'YEAR1',  0 as 'VOIDED',  ['Quick Journal Work HDR'].NOTEINDX as 'NOTEINDX',  '' as 'STSDESCR',  0 as 'Ledger_ID',  0 as ORD,  '' as 'BACHNUMB',  '' as 'BCHSOURC',  '01-01-1900' as 'RVRSNGDT',  0 as 'InfoValue',  0 as 'MKTOPROC'   from [GL10100] as ['Quick Journal Work HDR'] with (NOLOCK)  )    
GO
GRANT SELECT ON  [dbo].[glWorkOffsetTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[glWorkOffsetTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[glWorkOffsetTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[glWorkOffsetTransactions] TO [DYNGRP]
GO
