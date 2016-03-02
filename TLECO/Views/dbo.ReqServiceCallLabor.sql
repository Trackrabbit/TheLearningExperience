SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Call Labor Line view joining SVC30203 and SY03900 
 
CREATE VIEW [dbo].[ReqServiceCallLabor] AS 
SELECT CALLNBR      
	,SRVRECTYPE  
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
  WHERE  
	(SRVRECTYPE = 2		-- Open call 
	OR SRVRECTYPE = 3)	-- Invoiced 
	AND LINITMTYP = 'L' -- Part Lines 
 
UNION ALL 
 
SELECT CALLNBR      
	,SRVRECTYPE  
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
  WHERE  
	(SRVRECTYPE = 2		-- Open call 
	OR SRVRECTYPE = 3)	-- Invoiced 
	AND LINITMTYP = 'L' -- Part Lines 
  
 
GO
GRANT SELECT ON  [dbo].[ReqServiceCallLabor] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceCallLabor] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceCallLabor] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceCallLabor] TO [DYNGRP]
GO
