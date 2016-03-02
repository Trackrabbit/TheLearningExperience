SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[ReqInetAddressDataMods] 
AS 
select  
		INDEX1, 
		INDEX2,		 
		INDEX3,	 
		dateadd( hour, -datediff( hour, GETUTCDATE(), GETDATE() ),DATE1) as DATE1, 
		ACTION AS ACTIONTYPE, 
		0 as DEX_ROW_ID 
from	eConnect_Out  
where	DOCTYPE = 'ModifiedInternetAddress'  
		and TABLENAME = 'SY01200' 
GO
GRANT SELECT ON  [dbo].[ReqInetAddressDataMods] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqInetAddressDataMods] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqInetAddressDataMods] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqInetAddressDataMods] TO [DYNGRP]
GO
