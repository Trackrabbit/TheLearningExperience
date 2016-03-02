SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AATransactions] AS select ['aaGLDist'].[DEBITAMT] as 'Debit Amount', ['aaGLHdr'].[JRNENTRY] as 'Journal Entry', rtrim(['aaGLHdr'].[aaTRXSource]) as 'AA Transaction Source', ['aaGLDist'].[CRDTAMNT] as 'Credit Amount', ['Account Master'].[ACTINDX] as 'Account Index', rtrim(['Account Master'].[ACTDESCR]) as 'Account Description', rtrim(['aaTrxDimCodeSetp'].[aaTrxDimCode]) as 'Trx Dimension Code', rtrim(['aaTrxDimCodeSetp'].[aaTrxDimCodeDescr]) as 'Description 1',  (select rtrim([ACTNUMST]) from [GL00105] as ['Account Index Master'] where ['Account Index Master'].[ACTINDX] = ['Account Master'].[ACTINDX]) as 'Account Number', ['aaGLAssign'].[aaAssignedPercent] as 'Assignment Percentage', ['aaGLDist'].[aaChangeDate] as 'Change Date', ['aaGLDist'].[aaChangeTime] as 'Change Time', rtrim(['aaGLAssign'].[DistRef]) as 'Distribution Reference', ['aaGLDist'].[ORCRDAMT] as 'Originating Credit Amount', ['aaGLDist'].[ORDBTAMT] as 'Originating Debit Amount', rtrim(['aaGLHdr'].[aaGLTRXSource]) as 'Transaction Source', ['aaGLHdr'].[YEAR1] as 'Year'           from [AAG30003] as ['aaGLCode'] with (NOLOCK) left outer join [AAG30001] as ['aaGLDist'] with (NOLOCK) on ['aaGLCode'].[aaGLHdrID] = ['aaGLDist'].[aaGLHdrID]  and ['aaGLCode'].[aaGLDistID] = ['aaGLDist'].[aaGLDistID] left outer join [AAG30000] as ['aaGLHdr'] with (NOLOCK) on ['aaGLCode'].[aaGLHdrID] = ['aaGLHdr'].[aaGLHdrID]  and ['aaGLCode'].[aaGLHdrID] = ['aaGLHdr'].[aaGLHdrID] left outer join [GL00100] as ['Account Master'] with (NOLOCK) on ['aaGLDist'].[ACTINDX] = ['Account Master'].[ACTINDX] left outer join [AAG00401] as ['aaTrxDimCodeSetp'] with (NOLOCK) on ['aaGLCode'].[aaTrxDimID] = ['aaTrxDimCodeSetp'].[aaTrxDimID]  and ['aaGLCode'].[aaTrxCodeID] = ['aaTrxDimCodeSetp'].[aaTrxDimCodeID] left outer join [AAG30002] as ['aaGLAssign'] with (NOLOCK) on ['aaGLCode'].[aaGLHdrID] = ['aaGLAssign'].[aaGLHdrID]  and ['aaGLCode'].[aaGLDistID] = ['aaGLAssign'].[aaGLDistID]  and ['aaGLCode'].[aaGLAssignID] = ['aaGLAssign'].[aaGLAssignID] 
GO
GRANT SELECT ON  [dbo].[AATransactions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AATransactions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AATransactions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AATransactions] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AATransactions] TO [rpt_accounting manager]
GO
GRANT INSERT ON  [dbo].[AATransactions] TO [rpt_accounting manager]
GO
GRANT DELETE ON  [dbo].[AATransactions] TO [rpt_accounting manager]
GO
GRANT UPDATE ON  [dbo].[AATransactions] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[AATransactions] TO [rpt_certified accountant]
GO
GRANT INSERT ON  [dbo].[AATransactions] TO [rpt_certified accountant]
GO
GRANT DELETE ON  [dbo].[AATransactions] TO [rpt_certified accountant]
GO
GRANT UPDATE ON  [dbo].[AATransactions] TO [rpt_certified accountant]
GO
