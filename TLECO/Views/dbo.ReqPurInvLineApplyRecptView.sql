SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqPurInvLineApplyRecptView] AS  
select  
	POPIVCNO,  
	POPRCTNM,  
	QTYINVCD,  
	Revalue_Inventory,  
	RCPTLNNM,  
(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP10600.PURPVIDX) "ACTNUMST",  
	IVCLINNO,  
	ORUNTCST,  
	RCPTCOST,  
	ORCPTCOST  
	 
from   
	POP10600  
 
  
 
 
GO
GRANT SELECT ON  [dbo].[ReqPurInvLineApplyRecptView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurInvLineApplyRecptView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurInvLineApplyRecptView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurInvLineApplyRecptView] TO [DYNGRP]
GO
