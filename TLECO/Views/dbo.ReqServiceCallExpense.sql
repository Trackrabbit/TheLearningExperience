SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- Service Call Expense Line view joining SVC30203 and SY03900 
 
CREATE VIEW [dbo].[ReqServiceCallExpense] AS 
SELECT CALLNBR     
	,SRVRECTYPE  
	,LNITMSEQ     
	,EQPLINE      
	,TECHID       
	,ITEMNMBR                         
	,ITEMDESC  
	,UOFM       
	,QTYSOLD                
	,UNITCOST               
	,UNITPRCE               
	,EXTDCOST               
	,XTNDPRCE               
	,SY03900.TXTFIELD 
	,MISCPCT                
	,PONMBRSTR          
	,CAST(POLNSEQ AS int) as POLNSEQ 
	,PRICELVL         
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
	AND LINITMTYP = 'E' -- Part Lines 
 
UNION ALL 
 
SELECT CALLNBR     
	,SRVRECTYPE  
	,LNITMSEQ     
	,EQPLINE      
	,TECHID       
	,ITEMNMBR                         
	,ITEMDESC  
	,UOFM       
	,QTYSOLD                
	,UNITCOST               
	,UNITPRCE               
	,EXTDCOST               
	,XTNDPRCE               
	,SY03900.TXTFIELD 
	,MISCPCT                
	,PONMBRSTR          
	,CAST(POLNSEQ AS int) as POLNSEQ 
	,PRICELVL         
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
	AND LINITMTYP = 'E' -- Part Lines 
  
 
GO
GRANT SELECT ON  [dbo].[ReqServiceCallExpense] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqServiceCallExpense] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqServiceCallExpense] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqServiceCallExpense] TO [DYNGRP]
GO
