SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PO Header Freight Tax View unioning POP10160 and POP30160 and restricting by Ord = maxint-1 (2,147,483,646) 
-- Freight Taxes ord is set to maxint-1 
-- Misc Taxes ord is set to maxint-2 
 
CREATE VIEW [dbo].[ReqPOHeaderFreightTaxView] AS 
select  
	PONUMBER, 
	ORD, 
	TAXDTLID, 
	BKOUTTAX, 
	FRTTXAMT, 
	TAXPURCH, 
	TOTPURCH, 
	ORFRTTAX, 
	ORGTXPCH, 
	ORTOTPUR, 
	TXDTOTTX, 
	OTTAXPON,    
	TRXSORCE 
from  
	POP10160 
where 
	ORD = 2147483646 
 
union all 
 
select  
	PONUMBER, 
	ORD, 
	TAXDTLID, 
	BKOUTTAX, 
	FRTTXAMT, 
	TAXPURCH, 
	TOTPURCH, 
	ORFRTTAX, 
	ORGTXPCH, 
	ORTOTPUR, 
	TXDTOTTX, 
	OTTAXPON,    
	TRXSORCE 
from  
	POP30160 
where 
	ORD = 2147483646 
 
GO
GRANT SELECT ON  [dbo].[ReqPOHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPOHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPOHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPOHeaderFreightTaxView] TO [DYNGRP]
GO
