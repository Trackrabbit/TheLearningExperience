SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[MultidimensionalAnalysis] AS select rtrim(['Transaction Analysis Codes'].[GROUPID]) as 'DTA_Group_ID', rtrim(['Transaction Analysis Codes'].[DOCNUMBR]) as 'Document Number', ['Transaction Analysis Groups'].[GROUPAMT] as 'DTA_Group_Amount', ['Transaction Analysis Groups'].[JRNENTRY] as 'Journal Entry', ['Transaction Analysis Codes'].[TRXDATE] as 'TRX Date', rtrim(['Transaction Analysis Codes'].[CODEID]) as 'DTA_Code_ID', ['Transaction Analysis Codes'].[DTAQNTY] as 'DTA_Quantity', ['Transaction Analysis Codes'].[CODEAMT] as 'DTA_Amount', (select rtrim([ACTNUMST]) from [GL00105] as ['Account Index Master'] where ['Account Index Master'].[ACTINDX] = ['Transaction Analysis Codes'].[ACTINDX]) as 'Account Number',  ['Transaction Analysis Codes'].[ACTINDX] as 'Account Index', rtrim(['Transaction Analysis Groups'].[DTA_GL_Reference]) as 'DTA_GL_Reference', rtrim(['Transaction Analysis Codes'].[POSTDESC]) as 'DTA_Posting_Descr', rtrim(['Transaction Analysis Codes'].[DTAREF]) as 'DTA_Reference', 'DTA_Series' = dbo.DYN_FUNC_DTA_Series(['Transaction Analysis Codes'].[DTASERIES]), 'Posting Status' = dbo.DYN_FUNC_Posting_Status_MDA(['Transaction Analysis Groups'].[PSTGSTUS]), 'RM Document Type-All' = dbo.DYN_FUNC_RM_Document_TypeAll(['Transaction Analysis Codes'].[RMDTYPAL]), ['Transaction Analysis Codes'].[SEQNUMBR] as 'Sequence Number', 'Account Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppAccountIndex(1,['Transaction Analysis Codes'].[ACTINDX] ), 'Journal Entry For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppJournalEntry(1,['Transaction Analysis Groups'].[JRNENTRY],0.0,['Transaction Analysis Groups'].[PSTGSTUS],1  )           from [DTA10200] as ['Transaction Analysis Codes'] with (NOLOCK) left outer join [DTA10100] as ['Transaction Analysis Groups'] with (NOLOCK) on ['Transaction Analysis Codes'].[DTASERIES] = ['Transaction Analysis Groups'].[DTASERIES]  and ['Transaction Analysis Codes'].[DTAREF] = ['Transaction Analysis Groups'].[DTAREF]  and ['Transaction Analysis Codes'].[ACTINDX] = ['Transaction Analysis Groups'].[ACTINDX]  and ['Transaction Analysis Codes'].[SEQNUMBR] = ['Transaction Analysis Groups'].[SEQNUMBR]  and ['Transaction Analysis Codes'].[GROUPID] = ['Transaction Analysis Groups'].[GROUPID] 
GO
GRANT SELECT ON  [dbo].[MultidimensionalAnalysis] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MultidimensionalAnalysis] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MultidimensionalAnalysis] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MultidimensionalAnalysis] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[MultidimensionalAnalysis] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[MultidimensionalAnalysis] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[MultidimensionalAnalysis] TO [rpt_executive]
GO
