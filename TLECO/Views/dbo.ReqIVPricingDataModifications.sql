SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[ReqIVPricingDataModifications] as 
select  
		INDEX1, 
		isnull((select ISOCURRC from DYNAMICS..MC40200 where CURNCYID = eConnect_Out.INDEX2),(select ISOCURRC from DYNAMICS..MC40200 where CURNCYID in (select FUNLCURR from MC40000))) AS INDEX2, 
		INDEX3, 
		INDEX4, 
		dateadd( hour, -datediff( hour, GETUTCDATE(), GETDATE() ),DATE1) as DATE1, 
		ACTION AS ACTIONTYPE, 
		0 as DEX_ROW_ID 
from	eConnect_Out  
where	DOCTYPE = 'ModifiedPricing'  
		and TABLENAME = 'IV00107'  
		and INDEX4 <> '' 
GO
GRANT SELECT ON  [dbo].[ReqIVPricingDataModifications] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqIVPricingDataModifications] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqIVPricingDataModifications] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqIVPricingDataModifications] TO [DYNGRP]
GO
