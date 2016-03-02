SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PO Distribution View on SOP10102 
 
CREATE VIEW [dbo].[ReqSODistributionView] AS 
select 
	SOPNUMBE, 
	SOPTYPE, 
	SEQNUMBR, 
	DISTTYPE, 
	DistRef, 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = SOP10102.ACTINDX) "ACTNUMST", 
	DEBITAMT, 
	ORDBTAMT, 
	CRDTAMNT, 
	ORCRDAMT, 
	POSTED 
from 
	SOP10102  
 
GO
GRANT SELECT ON  [dbo].[ReqSODistributionView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqSODistributionView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqSODistributionView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqSODistributionView] TO [DYNGRP]
GO
