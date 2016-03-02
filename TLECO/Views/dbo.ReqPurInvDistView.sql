SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqPurInvDistView] AS  
select  
	POPRCTNM,  
	SEQNUMBR,  
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP10390.ACTINDX) "ACTNUMST",  
	CRDTAMNT,  
	ORCRDAMT,  
	DEBITAMT,  
	ORDBTAMT,  
	DistRef,  
	DISTTYPE,  
	TRXSORCE  
from   
	POP10390  
  
union all  
  
select  
	POPRCTNM,  
	SEQNUMBR,  
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP30390.ACTINDX) "ACTNUMST",  
	CRDTAMNT,  
	ORCRDAMT,  
	DEBITAMT,  
	ORDBTAMT,  
	DistRef,  
	DISTTYPE,  
	TRXSORCE  
from   
	POP30390  
 
GO
GRANT SELECT ON  [dbo].[ReqPurInvDistView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurInvDistView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurInvDistView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurInvDistView] TO [DYNGRP]
GO
