SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PO Header Tax View unioning POP10160 and POP30160 and restricting by Ord = 0 (header taxes only) 
 
CREATE VIEW [dbo].[ReqPOHeaderTaxView] AS 
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
where 
	ORD = 0 
 
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
where  
	ORD = 0 
 
GO
GRANT SELECT ON  [dbo].[ReqPOHeaderTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPOHeaderTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPOHeaderTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPOHeaderTaxView] TO [DYNGRP]
GO
