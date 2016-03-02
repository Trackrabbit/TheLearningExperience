SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[ReqCurrencyDataModifications] AS 
select  
		INDEX1, 
		dateadd( hour, -datediff( hour, GETUTCDATE(), GETDATE() ),DATE1) as DATE1, 
		ACTION AS ACTIONTYPE, 
		0 as DEX_ROW_ID 
from	eConnect_Out  
where	DOCTYPE = 'ModifiedCurrency'  
		and TABLENAME = 'MC40200'  
		and INDEX1 <> '' 
GO
GRANT SELECT ON  [dbo].[ReqCurrencyDataModifications] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqCurrencyDataModifications] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqCurrencyDataModifications] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqCurrencyDataModifications] TO [DYNGRP]
GO
