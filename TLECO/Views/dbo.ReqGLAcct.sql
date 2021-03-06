SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Account View unioning GL00100 and GL00105 
 
CREATE VIEW [dbo].[ReqGLAcct] AS 
select  
	ACTNUMST, 
	ACTIVE, 
	ACTDESCR, 
	ACTALIAS, 
	ACCTTYPE, 
	FXDORVAR, 
	CREATDDT, 
	GL00100.DEX_ROW_TS, 
	GL00100.DEX_ROW_ID 
from  
	GL00100 join GL00105 on (GL00100.ACTINDX = GL00105.ACTINDX) 
 
 
GO
GRANT SELECT ON  [dbo].[ReqGLAcct] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLAcct] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLAcct] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLAcct] TO [DYNGRP]
GO
