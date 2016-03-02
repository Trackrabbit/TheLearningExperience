SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqCurrencyAccess] AS 
select  
	CMPANYID, 
	CURNCYID, 
	(select ISOCURRC from DYNAMICS..MC40200 where CURNCYID = MC60100.CURNCYID) "ISOCURRC", 
	INACTIVE, 
	DEX_ROW_ID 
from  
	MC60100 
 
 
 
 
			 
GO
GRANT SELECT ON  [dbo].[ReqCurrencyAccess] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqCurrencyAccess] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqCurrencyAccess] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqCurrencyAccess] TO [DYNGRP]
GO
