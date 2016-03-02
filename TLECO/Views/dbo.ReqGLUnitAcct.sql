SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Unit Account View unioning GL00100 and GL00105 
 
CREATE VIEW [dbo].[ReqGLUnitAcct] AS 
select  
	ACTNUMST, 
	ACTALIAS, 
	ACTDESCR, 
	ACTIVE, 
	DECPLACS, 
	ACCTTYPE, 
	CREATDDT, 
	GL00100.DEX_ROW_TS, 
	GL00100.DEX_ROW_ID 
from  
	GL00100 join GL00105 on (GL00100.ACTINDX = GL00105.ACTINDX) 
where 
	ACCTTYPE = 2 
 
GO
GRANT SELECT ON  [dbo].[ReqGLUnitAcct] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLUnitAcct] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLUnitAcct] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLUnitAcct] TO [DYNGRP]
GO
