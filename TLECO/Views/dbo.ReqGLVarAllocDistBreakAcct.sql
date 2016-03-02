SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Variable Allocation Distribution Breakdown Account View  
 
CREATE VIEW [dbo].[ReqGLVarAllocDistBreakAcct] AS 
 
select  
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = GL00104.ACTINDX) "VARACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = GL00104.DSTINDX) "DISTACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = GL00104.BDNINDX) "BREAKACTNUMST", 
	ACTINDX, 
	DSTINDX 
from  
	GL00104 
 
GO
GRANT SELECT ON  [dbo].[ReqGLVarAllocDistBreakAcct] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLVarAllocDistBreakAcct] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLVarAllocDistBreakAcct] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLVarAllocDistBreakAcct] TO [DYNGRP]
GO
