SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PurchaseInvoice Header Tax View unioning POP10360 and POP30360 and restricting by RCPTLNNM=0 (header taxes only)  
  
CREATE VIEW [dbo].[ReqPurInvHeaderTaxView] AS  
select   
	POPRCTNM, 
	RCPTLNNM, 
	TAXDTLID,  
(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP10360.ACTINDX) "ACTNUMST", 
	BKOUTTAX,  
	TAXAMNT,  
	ORTAXAMT,  
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
	RCPTLNNM = 0  
  
union all  
  
select   
	POPRCTNM, 
	RCPTLNNM, 
	TAXDTLID,  
(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP30360.ACTINDX) "ACTNUMST", 
	BKOUTTAX,  
	TAXAMNT,  
	ORTAXAMT,  
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
	RCPTLNNM = 0  
  
 
GO
GRANT SELECT ON  [dbo].[ReqPurInvHeaderTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurInvHeaderTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurInvHeaderTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurInvHeaderTaxView] TO [DYNGRP]
GO
