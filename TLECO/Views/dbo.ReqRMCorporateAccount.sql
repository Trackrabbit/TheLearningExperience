SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- RM CorporateAccount View on table RM00101. The corporate account parent record is included in RM00101  
-- but should not be inlcuded as a member. 
 
CREATE VIEW [dbo].[ReqRMCorporateAccount] AS 
select  
	CPRCSTNM, 
	CUSTNMBR 
 
from  
	RM00101  
where 
	CPRCSTNM <> CUSTNMBR 
 
 
GO
GRANT SELECT ON  [dbo].[ReqRMCorporateAccount] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRMCorporateAccount] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRMCorporateAccount] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRMCorporateAccount] TO [DYNGRP]
GO
