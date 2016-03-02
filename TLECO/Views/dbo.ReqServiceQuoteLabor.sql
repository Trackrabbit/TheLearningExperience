SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Quote Labor Line view joining SVC30203 and SY03900 
 
CREATE VIEW [dbo].[ReqServiceQuoteLabor] AS 
SELECT CALLNBR      
	,LNITMSEQ     
	,EQPLINE      
	,TECHID       
	,ITEMNMBR                         
	,ITEMUSETYPE  
	,ITEMDESC  
	,UOFM       
	,QTYORDER               
	,QTYSOLD                
	,UNITCOST               
	,UNITPRCE               
	,EXTDCOST               
	,XTNDPRCE               
	,SY03900.TXTFIELD 
	,STRTDATE 
	,STRTTIME 
	,ENDDATE 
	,ENDTME 
	,CAST(TRANSTME AS int) as TRANSTME 
	,CAST(BILLABLTIM AS int) as BILLABLTIM 
	,LABPCT                 
	,Miles_Start   
	,Miles_End   
	,Miles_Used   
	,PRICELVL         
	,Work_Type    
	,ORUNTCST               
	,ORUNTPRC               
	,OREXTCST               
	,OXTNDPRC               
	,TAXAMNT                
	,ORTAXAMT               
	,SVC_FO_ID 
  FROM [SVC00203] 
	left outer join SY03900 on (SVC00203.NOTEINDX = SY03900.NOTEINDX) 
  WHERE SRVRECTYPE = 1 -- QUOTE 
	AND LINITMTYP = 'L' -- Part Lines 
 
UNION ALL 
 
SELECT CALLNBR      
	,LNITMSEQ     
	,EQPLINE      
	,TECHID       
	,ITEMNMBR                         
	,ITEMUSETYPE  
	,ITEMDESC  
	,UOFM       
	,QTYORDER               
	,QTYSOLD                
	,UNITCOST               
	,UNITPRCE               
	,EXTDCOST               
	,XTNDPRCE               
	,SY03900.TXTFIELD 
	,STRTDATE 
	,STRTTIME 
	,ENDDATE 
	,ENDTME 
	,CAST(TRANSTME AS int) as TRANSTME 
	,CAST(BILLABLTIM AS int) as BILLABLTIM 
	,LABPCT                 
	,Miles_Start   
	,Miles_End   
	,Miles_Used   
	,PRICELVL         
	,Work_Type    
	,ORUNTCST               
	,ORUNTPRC               
	,OREXTCST               
	,OXTNDPRC               
	,TAXAMNT                
	,ORTAXAMT               
	,SVC_FO_ID 
  FROM [SVC30203] 
	left outer join SY03900 on (SVC30203.NOTEINDX = SY03900.NOTEINDX) 
  WHERE SRVRECTYPE = 1 -- QUOTE 
	AND LINITMTYP = 'L' -- Part Lines 
  
 
GO
GRANT SELECT ON  [dbo].[ReqServiceQuoteLabor] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceQuoteLabor] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceQuoteLabor] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceQuoteLabor] TO [DYNGRP]
GO
