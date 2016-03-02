SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqTaxScheduleDetailDataMods] AS 
select  
		INDEX1, 
		INDEX2,	 
		dateadd( hour, -datediff( hour, GETUTCDATE(), GETDATE() ),DATE1) as DATE1, 
		ACTION AS ACTIONTYPE, 
		0 as DEX_ROW_ID 
from	eConnect_Out  
where	DOCTYPE = 'ModifiedTaxScheduleDetail'  
		and TABLENAME = 'TX00102'  
		and INDEX1 <> '' 
		and INDEX2 <> '' 
GO
GRANT SELECT ON  [dbo].[ReqTaxScheduleDetailDataMods] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqTaxScheduleDetailDataMods] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqTaxScheduleDetailDataMods] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqTaxScheduleDetailDataMods] TO [DYNGRP]
GO
