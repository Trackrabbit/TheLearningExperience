SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[glOpenTransactions] as (  select   GETDATE() AS 'TRXDATE',  0 as 'JRNENTRY',  REPLICATE('X', 21) as 'DOCTYNAM',  0 as 'ACTINDX',  9999999999999.99999 as 'DEBITAMT',  9999999999999.99999 as 'CRDTAMNT',  REPLICATE('X', 11) as 'SOURCDOC',  REPLICATE('X', 13) as 'AUDITTRAIL',  REPLICATE('X', 31) as 'REFRENCE',  0 as 'SEQNUMBR',  0 as 'DCSTATUS',  0 as 'DOCTYPE',  0 as 'CURRNIDX',  9999999999999.99999 as 'RCTRXSEQ',  0 as 'QKOFSET',  0 as 'YEAR1',  0 as 'VOIDED',  9999999999999.99999 as 'NOTEINDX',  REPLICATE('X', 31) as 'STSDESCR',  0 as 'Ledger_ID',  0 as 'ORD',  REPLICATE('X', 15) as 'BACHNUMB',  REPLICATE('X', 15) as 'BCHSOURC',  GETDATE() as 'RVRSNGDT',  0 as 'InfoValue',  0 as 'MKTOPROC',  0 as 'PERIODID'  where (1 = 0)  UNION ALL  select   ['GL Transaction Open'].[TRXDATE] AS 'TRXDATE',  ['GL Transaction Open'].[JRNENTRY] as 'JRNENTRY',  '' as 'DOCTYNAM',  ['GL Transaction Open'].[ACTINDX] as 'ACTINDX',  ['GL Transaction Open'].[DEBITAMT] as 'DEBITAMT',  ['GL Transaction Open'].[CRDTAMNT] as 'CRDTAMNT',  ['GL Transaction Open'].[SOURCDOC] as 'SOURCDOC',  ['GL Transaction Open'].[TRXSORCE] as 'AUDITTRAIL',  ['GL Transaction Open'].[REFRENCE] as 'REFRENCE',  ['GL Transaction Open'].[SEQNUMBR] as 'SEQNUMBR',  2 as 'DCSTATUS',   1 as 'DOCTYPE',   0 as 'CURRNIDX',  ['GL Transaction Open'].[RCTRXSEQ] as 'RCTRXSEQ',  ['GL Transaction Open'].[QKOFSET] as 'QKOFSET',  ['GL Transaction Open'].[OPENYEAR] as 'YEAR1',  ['GL Transaction Open'].[VOIDED] as 'VOIDED',  ['GL Transaction Open'].[NOTEINDX] as 'NOTEINDX',  '' as 'STSDESCR',  ['GL Transaction Open'].[Ledger_ID] as 'Ledger_ID',  0 as 'ORD',  '' as 'BACHNUMB',  '' as 'BCHSOURC',  '01-01-1900' as 'RVRSNGDT',  (select dbo.syGetListInfoValue(0, 0, 0, 0, (select 1 where VOIDED = 1), 0, 0, 0, 0, 0, 0, 0)),  0 as 'MKTOPROC',  ['GL Transaction Open'].[PERIODID] as 'PERIODID'   from [GL20000] as ['GL Transaction Open'] with (NOLOCK) )    
GO
GRANT SELECT ON  [dbo].[glOpenTransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[glOpenTransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[glOpenTransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[glOpenTransactions] TO [DYNGRP]
GO
