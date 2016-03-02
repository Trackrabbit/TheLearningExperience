SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Call Part Line view joining SVC30203 and SY03900 
 
CREATE VIEW [dbo].[ReqServiceCallParts] AS 
SELECT CALLNBR   
	,SRVRECTYPE  
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
	,ATYALLOC               
	,QTYSOLD 
	,EXTDCOST               
	,TRNSFLOC     
	,TRNSFQTY               
	,TRNFLAG  
	,ORDDOCID         
	,CAST(TRANSLINESEQ AS int) as TRANSLINESEQ 
	,PONMBRSTR          
	,CAST(POLNSEQ AS int) as POLNSEQ 
	,On_Return         
	,RETDOCID  
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,SVC_Disable_XFR_Grouping  
	,OREXTCST   
	,SVC00203.DEX_ROW_ID 
  FROM [SVC00203] 
	left outer join SY03900 on (SVC00203.NOTEINDX = SY03900.NOTEINDX) 
  WHERE  
	(SRVRECTYPE = 2		-- Open call 
	OR SRVRECTYPE = 3)	-- Invoiced 
	AND LINITMTYP = 'P' -- Part Lines 
 
UNION ALL 
 
SELECT CALLNBR 
	,SRVRECTYPE  
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
	,ATYALLOC               
	,QTYSOLD 
	,EXTDCOST               
	,TRNSFLOC     
	,TRNSFQTY               
	,TRNFLAG  
	,ORDDOCID         
	,CAST(TRANSLINESEQ AS int) as TRANSLINESEQ 
	,PONMBRSTR          
	,CAST(POLNSEQ AS int) as POLNSEQ 
	,On_Return         
	,RETDOCID  
	,CAST(LNSEQNBR AS int) as LNSEQNBR 
	,SVC_Disable_XFR_Grouping  
	,OREXTCST  
	,SVC30203.DEX_ROW_ID 
  FROM [SVC30203] 
	left outer join SY03900 on (SVC30203.NOTEINDX = SY03900.NOTEINDX) 
  WHERE  
	(SRVRECTYPE = 2		-- Open call 
	OR SRVRECTYPE = 3)	-- Invoiced 
	AND LINITMTYP = 'P' -- Part Lines 
	 
 
GO
GRANT SELECT ON  [dbo].[ReqServiceCallParts] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceCallParts] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceCallParts] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceCallParts] TO [DYNGRP]
GO
