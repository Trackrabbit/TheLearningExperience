SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqShippingMethodDataMods] AS 
select  
		INDEX1,	 
		dateadd( hour, -datediff( hour, GETUTCDATE(), GETDATE() ),DATE1) as DATE1, 
		ACTION AS ACTIONTYPE, 
		0 as DEX_ROW_ID 
from	eConnect_Out  
where	DOCTYPE = 'ModifiedShippingMethod'  
		and TABLENAME = 'SY03000'  
		and INDEX1 <> '' 
 
GO
GRANT SELECT ON  [dbo].[ReqShippingMethodDataMods] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqShippingMethodDataMods] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqShippingMethodDataMods] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqShippingMethodDataMods] TO [DYNGRP]
GO
