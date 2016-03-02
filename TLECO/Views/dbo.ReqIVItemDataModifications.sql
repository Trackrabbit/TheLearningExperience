SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[ReqIVItemDataModifications] as 
select  
		INDEX1, 
		INDEX2 AS ITEMTYPE, 
		dateadd( hour, -datediff( hour, GETUTCDATE(), GETDATE() ),DATE1) as DATE1, 
		ACTION AS ACTIONTYPE, 
		0 as DEX_ROW_ID 
from	eConnect_Out 
where	DOCTYPE = 'ModifiedItem'  
		and TABLENAME = 'IV00101'  
		and INDEX1 <> '' 
GO
GRANT SELECT ON  [dbo].[ReqIVItemDataModifications] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqIVItemDataModifications] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqIVItemDataModifications] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqIVItemDataModifications] TO [DYNGRP]
GO
