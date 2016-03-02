SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PO Header Misc Tax View unioning POP10160 and POP30160 and restricting by Ord = maxint-2 (2,147,483,645) 
-- Freight Taxes ord is set to maxint-1 
-- Misc Taxes ord is set to maxint-2 
 
CREATE VIEW [dbo].[ReqPOHeaderMiscTaxView] AS 
select  
	PONUMBER, 
	ORD, 
	TAXDTLID, 
	BKOUTTAX, 
	MSCTXAMT, 
	TAXPURCH, 
	TOTPURCH, 
	ORMSCTAX, 
	ORGTXPCH, 
	ORTOTPUR, 
	TXDTOTTX, 
	OTTAXPON,    
	TRXSORCE 
from  
	POP10160 
where 
	ORD = 2147483645 
 
union all 
 
select  
PONUMBER, 
	ORD, 
	TAXDTLID, 
	BKOUTTAX, 
	MSCTXAMT, 
	TAXPURCH, 
	TOTPURCH, 
	ORMSCTAX, 
	ORGTXPCH, 
	ORTOTPUR, 
	TXDTOTTX, 
	OTTAXPON,    
	TRXSORCE 
from  
	POP30160 
where 
	ORD = 2147483645 
 
GO
GRANT SELECT ON  [dbo].[ReqPOHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPOHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPOHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPOHeaderMiscTaxView] TO [DYNGRP]
GO
