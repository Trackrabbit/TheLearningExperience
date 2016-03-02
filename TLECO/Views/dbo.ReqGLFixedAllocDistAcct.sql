SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Fixed Allocation Distributions Account View  
 
CREATE VIEW [dbo].[ReqGLFixedAllocDistAcct] AS 
 
select  
	ACTNUMST,   
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = GL00103.DSTINDX) "DISTACTNUMST", 
	PRCNTAGE, 
	GL00103.ACTINDX 
from  
	GL00103 join GL00105 on (GL00103.ACTINDX = GL00105.ACTINDX) 
	     	 
GO
GRANT SELECT ON  [dbo].[ReqGLFixedAllocDistAcct] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLFixedAllocDistAcct] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLFixedAllocDistAcct] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLFixedAllocDistAcct] TO [DYNGRP]
GO
