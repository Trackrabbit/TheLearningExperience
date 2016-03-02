SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PurchaseInvoice Header Freight Tax View unioning POP10360 and POP30360 and restricting by  RCPTLNNM = maxint-1 (2,147,483,646)  
  
CREATE VIEW [dbo].[ReqPurInvHeaderFreightTaxView] AS  
select   
	POPRCTNM, 
	RCPTLNNM, 
	TAXDTLID,  
(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP10360.ACTINDX) "ACTNUMST", 
	BKOUTTAX,  
	FRTTXAMT, 
	ORFRTTAX, 
	TAXPURCH, 
	ORGTXPCH,  
	TOTPURCH,  
	ORTOTPUR, 
	TXDTOTTX,  
 	OTTAXPON,     
	TRXSORCE  
from   
	POP10360  
where  
	RCPTLNNM = 2147483646   
  
union all  
  
select   
	POPRCTNM, 
	RCPTLNNM, 
	TAXDTLID,  
(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP30360.ACTINDX) "ACTNUMST", 
	BKOUTTAX,  
	FRTTXAMT, 
	ORFRTTAX,  
	TAXPURCH, 
	ORGTXPCH,  
	TOTPURCH,  
	ORTOTPUR, 
	TXDTOTTX,  
 	OTTAXPON,     
	TRXSORCE  
from   
	POP30360  
where   
	RCPTLNNM = 2147483646   
  
GO
GRANT SELECT ON  [dbo].[ReqPurInvHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurInvHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurInvHeaderFreightTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurInvHeaderFreightTaxView] TO [DYNGRP]
GO
