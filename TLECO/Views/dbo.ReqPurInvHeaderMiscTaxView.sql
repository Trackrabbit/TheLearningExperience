SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- PurchaseInvoice  Header Misc Tax View unioning POP10360 and POP30360 and restricting by RCPTLNNM = maxint-2 (2,147,483,645)  
  
CREATE VIEW [dbo].[ReqPurInvHeaderMiscTaxView] AS  
select   
	POPRCTNM, 
	RCPTLNNM, 
	TAXDTLID,  
(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP10360.ACTINDX) "ACTNUMST",  
	BKOUTTAX,  
	MSCTXAMT,  
	ORMSCTAX, 
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
	RCPTLNNM = 2147483645   
  
union all  
  
select   
	POPRCTNM, 
	RCPTLNNM, 
	TAXDTLID,  
(select ACTNUMST from GL00105 where GL00105.ACTINDX = POP30360.ACTINDX) "ACTNUMST",  
	BKOUTTAX,  
	MSCTXAMT,  
	ORMSCTAX, 
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
	RCPTLNNM = 2147483645   
  
GO
GRANT SELECT ON  [dbo].[ReqPurInvHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPurInvHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPurInvHeaderMiscTaxView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPurInvHeaderMiscTaxView] TO [DYNGRP]
GO
