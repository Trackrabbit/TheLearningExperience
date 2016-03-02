SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Posting Account Currencies View  
 
CREATE VIEW [dbo].[ReqGLPostingAcctCurrencies] AS 
 
select  
	ACTNUMST, 
	CURNCYID, 
	MC00200.ACTINDX 
from  
	MC00200 join GL00105 on (MC00200.ACTINDX = GL00105.ACTINDX) 
where  
	CURNCYID <> '' 
GO
GRANT SELECT ON  [dbo].[ReqGLPostingAcctCurrencies] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLPostingAcctCurrencies] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLPostingAcctCurrencies] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLPostingAcctCurrencies] TO [DYNGRP]
GO
