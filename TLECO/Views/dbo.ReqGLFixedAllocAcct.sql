SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Fixed Allocation Account View  
 
CREATE VIEW [dbo].[ReqGLFixedAllocAcct] AS 
 
select  
	ACTNUMST, 
	ACTALIAS, 
	ACTDESCR, 
	ACTIVE, 
	PostSlsIn, 
	PostIvIn, 
	PostPurchIn, 
	PostPRIn, 
	GL00100.ACTINDX, 
	ACCTTYPE, 
	CREATDDT, 
	GL00100.DEX_ROW_TS, 
	GL00100.DEX_ROW_ID 
from  
	GL00100 join GL00105 on (GL00100.ACTINDX = GL00105.ACTINDX) 
	     	 
where 
	FXDORVAR = 1 and ACCTTYPE in (3,4) 
GO
GRANT SELECT ON  [dbo].[ReqGLFixedAllocAcct] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLFixedAllocAcct] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLFixedAllocAcct] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLFixedAllocAcct] TO [DYNGRP]
GO
