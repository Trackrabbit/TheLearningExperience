SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PO Line Tax View unioning POP10160 and POP30160 with no restrictions. Line table will join to tax table on ORD column 
 
CREATE VIEW [dbo].[ReqPOLineTaxView] AS 
select  
	PONUMBER, 
	ORD, 
	TAXDTLID, 
	BKOUTTAX, 
	TAXAMNT, 
	TAXPURCH, 
	TOTPURCH, 
	ORTAXAMT, 
	ORGTXPCH, 
	ORTOTPUR, 
	TXDTOTTX, 
	OTTAXPON,    
	TRXSORCE 
from  
	POP10160 
 
union all 
 
select  
	PONUMBER, 
	ORD, 
	TAXDTLID, 
	BKOUTTAX, 
	TAXAMNT, 
	TAXPURCH, 
	TOTPURCH, 
	ORTAXAMT, 
	ORGTXPCH, 
	ORTOTPUR, 
	TXDTOTTX, 
	OTTAXPON, 
	TRXSORCE 
from  
	POP30160 
 
GO
GRANT SELECT ON  [dbo].[ReqPOLineTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPOLineTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPOLineTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPOLineTaxView] TO [DYNGRP]
GO
