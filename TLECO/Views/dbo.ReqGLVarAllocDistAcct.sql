SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Variable Allocation Distribution Account View  
 
CREATE VIEW [dbo].[ReqGLVarAllocDistAcct] AS 
 
select  
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = GL00103.ACTINDX) "VARACTNUMST", 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = GL00103.DSTINDX) "DISTACTNUMST", 
	ACTINDX, 
	DSTINDX 
from  
	GL00103 
GO
GRANT SELECT ON  [dbo].[ReqGLVarAllocDistAcct] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLVarAllocDistAcct] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLVarAllocDistAcct] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLVarAllocDistAcct] TO [DYNGRP]
GO
