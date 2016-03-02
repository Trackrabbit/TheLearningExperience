SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqPurRecptLineBin] AS 
select 
	POPRCTNM, 
	RCPTLNNM, 
	ITEMNMBR, 
	BIN, 
	QUANTITY 
from  
	POP10340 
union all 
select 
	POPRCTNM, 
	RCPTLNNM, 
	ITEMNMBR, 
	BIN, 
	QUANTITY 
from  
	POP30340 
GO
GRANT SELECT ON  [dbo].[ReqPurRecptLineBin] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurRecptLineBin] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurRecptLineBin] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurRecptLineBin] TO [DYNGRP]
GO
