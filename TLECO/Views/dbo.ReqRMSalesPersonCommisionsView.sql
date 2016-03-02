SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqRMSalesPersonCommisionsView] AS 
select 
	2 "TrxState", -- OPEN 
	RMDTYPAL,  
	DOCNUMBR,               
	SEQNUMBR,     
	NCOMAMNT,               
	COMPRCNT,  
	TRXSORCE,       
	COMTRSRC,       
	CUSTNMBR,         
	SLPRSNID,         
	SALSTERR,         
	PRCTOSAL,  
	SLSAMNT,                
	COMDLRAM,               
	POSTED,  
	COMMPAID,  
	ORCOMAMT,               
	ORNCMAMT,               
	ORSLSAMT,               
	(select CURNCYID from DYNAMICS..MC40200 where CURRNIDX = RM10501.CURRNIDX) "CURNCYID", 
	DEX_ROW_ID  
from 
	RM10501 
 
union all 
 
select 
	3 "TrxState", -- HISTORY 
	RMDTYPAL,  
	DOCNUMBR,               
	SEQNUMBR,     
	NCOMAMNT,               
	COMPRCNT,  
	TRXSORCE,       
	COMTRSRC,       
	CUSTNMBR,         
	SLPRSNID,         
	SALSTERR,         
	PRCTOSAL,  
	SLSAMNT,                
	COMDLRAM,               
	POSTED,  
	COMMPAID,  
	ORCOMAMT,               
	ORNCMAMT,               
	ORSLSAMT,               
	(select CURNCYID from DYNAMICS..MC40200 where CURRNIDX = RM30501.CURRNIDX) "CURNCYID", 
	DEX_ROW_ID  
from 
	RM30501 
GO
GRANT SELECT ON  [dbo].[ReqRMSalesPersonCommisionsView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRMSalesPersonCommisionsView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRMSalesPersonCommisionsView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRMSalesPersonCommisionsView] TO [DYNGRP]
GO
