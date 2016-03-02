SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[ReqDeletedCurrency] AS 
Select	 
	0 as CURRNIDX, 
	INDEX1 as CURNCYID, 
	INDEX2 as CRNCYDSC, 
	INDEX3 as ISOCURRC, 
	'' as CRNCYSYM, 
	0 as CYSYMPLC, 
	0 as INCLSPAC, 
	2 as NEGSYMBL, 
	0 asNGSMAMPC, 
	0 as NEGSMPLC, 
	2 as DECSYMBL, 
	3 as DECPLCUR, 
	1 as THOUSSYM, 
	'' as CURTEXT_1, 
	'' as CURTEXT_2, 
	'' as CURTEXT_3, 
	DATE1 as DEX_ROW_TS, 
	0 AS DEX_ROW_ID, 
	1 as IsDeleted 
from	eConnect_Out  
where	DOCTYPE = 'ModifiedCurrency'  
		and TABLENAME = 'MC40200'  
		and INDEX3 <> ''  
		and DATE1 <= getDate()  
		and ACTION = 3 
GO
GRANT SELECT ON  [dbo].[ReqDeletedCurrency] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqDeletedCurrency] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqDeletedCurrency] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqDeletedCurrency] TO [DYNGRP]
GO
