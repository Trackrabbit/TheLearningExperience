SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqBatch] AS 
 
select  
	BACHNUMB Id, 
	BCHSOURC Source, 
	NUMOFTRX NumberOfTransactions, 
	SERIES Series, 
	BACHFREQ Frequency, 
	RCLPSTDT RecurringLastPostedDate, 
	NOFPSTGS NumberOfPostings, 
	BCHCOMNT Comment, 
	BCHTOTAL Total, 
	CURNCYID CurrencyId, 
	CNTRLTRX ControlNumberOfTransactions, 
	CNTRLTOT ControlTotal, 
	GLPOSTDT GeneralLedgerPostingDate, 
	NULL BankAccount, 
	Workflow_Priority WorkflowPriority, 
	Workflow_Approval_Status ApprovalWorkflowStatus, 
	CREATDDT, 
	TIME1, 
	DEX_ROW_ID 
from SY00500 
 
GO
GRANT SELECT ON  [dbo].[ReqBatch] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqBatch] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqBatch] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqBatch] TO [DYNGRP]
GO
