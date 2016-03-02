SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Quote Part Line view joining SVC30203 and SY03900 
 
CREATE VIEW [dbo].[ReqServiceQuoteParts] AS 
SELECT CALLNBR      
	,LNITMSEQ      
	,EQPLINE      
	,SRVSTAT  
	,TECHID       
	,ITEMNMBR                         
	,ITEMUSETYPE  
	,ITEMDESC  
	,LOCNCODE     
	,UOFM       
	,QTYORDER               
	,QTYBACKO               
	,UNITCOST               
	,UNITPRCE               
	,XTNDPRCE               
	,SY03900.TXTFIELD 
	,PARTPCT                
	,PRICELVL         
	,SVC_Address_Option  
	,SVC_Misc_Address_Code  
	,ORUNTCST               
	,ORUNTPRC               
	,OXTNDPRC               
	,TAXAMNT                
	,ORTAXAMT               
	,SVC_FO_ID 
  FROM [SVC00203] 
	left outer join SY03900 on (SVC00203.NOTEINDX = SY03900.NOTEINDX) 
  WHERE SRVRECTYPE = 1 -- QUOTE 
	AND LINITMTYP = 'P' -- Part Lines 
 
UNION ALL 
 
SELECT CALLNBR      
	,LNITMSEQ     
	,EQPLINE      
	,SRVSTAT  
	,TECHID       
	,ITEMNMBR                         
	,ITEMUSETYPE  
	,ITEMDESC  
	,LOCNCODE     
	,UOFM       
	,QTYORDER               
	,QTYBACKO               
	,UNITCOST               
	,UNITPRCE               
	,XTNDPRCE               
	,SY03900.TXTFIELD 
	,PARTPCT                
	,PRICELVL         
	,SVC_Address_Option  
	,SVC_Misc_Address_Code  
	,ORUNTCST               
	,ORUNTPRC               
	,OXTNDPRC               
	,TAXAMNT                
	,ORTAXAMT               
	,SVC_FO_ID 
  FROM [SVC30203] 
	left outer join SY03900 on (SVC30203.NOTEINDX = SY03900.NOTEINDX) 
  WHERE SRVRECTYPE = 1 -- QUOTE 
	AND LINITMTYP = 'P' -- Part Lines 
	 
 
GO
GRANT SELECT ON  [dbo].[ReqServiceQuoteParts] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceQuoteParts] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceQuoteParts] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceQuoteParts] TO [DYNGRP]
GO
