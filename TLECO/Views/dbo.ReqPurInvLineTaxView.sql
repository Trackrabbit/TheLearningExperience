SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PurchaseInvoice Line Tax View unioning POP10360 and POP30360 with no restrictions. Line table will join to tax table on RCPTLNNM column  
  
CREATE VIEW [dbo].[ReqPurInvLineTaxView] AS  
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
  
 
GO
GRANT SELECT ON  [dbo].[ReqPurInvLineTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurInvLineTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurInvLineTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurInvLineTaxView] TO [DYNGRP]
GO
