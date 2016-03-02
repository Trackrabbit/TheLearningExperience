SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Variable Allocation Account View  
 
CREATE VIEW [dbo].[ReqGLVarAllocAcct] AS 
 
select 
	ACTNUMST, 
	ACTALIAS, 
	ACTDESCR, 
	ACTIVE, 
	PostSlsIn, 
	PostIvIn, 
	PostPurchIn, 
	PostPRIn, 
	BALFRCLC, 
	GL00100.ACTINDX, 
	ACCTTYPE, 
	CREATDDT, 
	GL00100.DEX_ROW_TS, 
	GL00100.DEX_ROW_ID 
from  
	GL00100 join GL00105 on (GL00100.ACTINDX = GL00105.ACTINDX) 
where  
	FXDORVAR = 2 
and 	ACCTTYPE in (3,4) 
GO
GRANT SELECT ON  [dbo].[ReqGLVarAllocAcct] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLVarAllocAcct] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLVarAllocAcct] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLVarAllocAcct] TO [DYNGRP]
GO
