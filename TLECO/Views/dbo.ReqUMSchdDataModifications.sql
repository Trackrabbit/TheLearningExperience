SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqUMSchdDataModifications] AS 
select  
		INDEX1, 
		dateadd( hour, -datediff( hour, GETUTCDATE(), GETDATE() ),DATE1) as DATE1, 
		ACTION AS ACTIONTYPE, 
		0 as DEX_ROW_ID 
from	eConnect_Out  
where	DOCTYPE = 'ModifiedUOFM'  
		and TABLENAME = 'IV40201'  
		and INDEX1 <> '' 
GO
GRANT SELECT ON  [dbo].[ReqUMSchdDataModifications] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqUMSchdDataModifications] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqUMSchdDataModifications] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqUMSchdDataModifications] TO [DYNGRP]
GO
