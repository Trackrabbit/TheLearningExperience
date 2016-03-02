SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Currency View on MC40200. No duplicate ISO Codes are returend or blank ISO Codes 
 
 
CREATE VIEW [dbo].[ReqCurrency] AS 
select  
	CURRNIDX, 
	CURNCYID, 
	CRNCYDSC, 
	ISOCURRC, 
	CRNCYSYM, 
	CYSYMPLC, 
	INCLSPAC, 
	NEGSYMBL, 
	NGSMAMPC, 
	NEGSMPLC, 
	DECSYMBL, 
	DECPLCUR, 
	THOUSSYM, 
	CURTEXT_1, 
	CURTEXT_2, 
	CURTEXT_3, 
	DEX_ROW_TS, 
	DEX_ROW_ID, 
	0 as IsDeleted 
from  
	MC40200  
where  
	DEX_ROW_ID in (select min(DEX_ROW_ID) from MC40200 group by ISOCURRC) 
and 	ISOCURRC <> '' 
Union All 
Select	* 
from	ReqDeletedCurrency 
GO
GRANT SELECT ON  [dbo].[ReqCurrency] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqCurrency] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqCurrency] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqCurrency] TO [DYNGRP]
GO
