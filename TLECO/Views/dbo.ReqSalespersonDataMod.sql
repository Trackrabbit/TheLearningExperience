SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[ReqSalespersonDataMod] as 
select  
		INDEX1, 
		dateadd( hour, -datediff( hour, GETUTCDATE(), GETDATE() ),DATE1) as DATE1, 
		ACTION AS ACTIONTYPE, 
		0 as DEX_ROW_ID 
from	eConnect_Out 
where	DOCTYPE = 'ModifiedSalesperson'  
		and TABLENAME = 'RM00301'  
		and INDEX1 <> '' 
GO
GRANT SELECT ON  [dbo].[ReqSalespersonDataMod] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqSalespersonDataMod] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqSalespersonDataMod] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqSalespersonDataMod] TO [DYNGRP]
GO
