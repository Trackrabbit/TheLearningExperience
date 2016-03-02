SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqRMCashReceiptDist] AS 
select 
	DOCNUMBR, 
	SEQNUMBR,     
	DISTTYPE, 
	DistRef,                          
	(select ACTNUMST from GL00105 where DSTINDX = ACTINDX) "ACTNUMST", 
	DEBITAMT,               
	ORDBTAMT,              
	CRDTAMNT,               
	ORCRDAMT, 
	RMDTYPAL               
from 
	RM10101 
 
union all 
 
select 
	DOCNUMBR, 
	SEQNUMBR, 
	DISTTYPE, 
	DistRef, 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = RM30301.DSTINDX) "ACTNUMST", 
	DEBITAMT, 
	ORDBTAMT, 
	CRDTAMNT, 
	ORCRDAMT, 
	RMDTYPAL 
from  
	RM30301  
GO
GRANT SELECT ON  [dbo].[ReqRMCashReceiptDist] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRMCashReceiptDist] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRMCashReceiptDist] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRMCashReceiptDist] TO [DYNGRP]
GO
