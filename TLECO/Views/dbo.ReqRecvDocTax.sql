SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqRecvDocTax] AS 
select 
	RMDTYPAL, 
	DOCNUMBR, 
	TAXDTLID,        
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = RM10601.ACTINDX) "ACTNUMST", 
	TAXAMNT, 
	ORTAXAMT, 
	STAXAMNT,               
	ORSLSTAX,               
	FRTTXAMT,               
	ORFRTTAX,               
	MSCTXAMT,               
	ORMSCTAX,               
	TAXDTSLS,               
	ORTOTSLS,              
	TDTTXSLS,               
	ORTXSLS,                
	BKOUTTAX  
 
from  
	RM10601  
 
union all 
 
select 
	RMDTYPAL, 
	DOCNUMBR, 
	TAXDTLID,        
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = RM30601.ACTINDX) "ACTNUMST", 
	TAXAMNT, 
	ORTAXAMT, 
	STAXAMNT,               
	ORSLSTAX,               
	FRTTXAMT,               
	ORFRTTAX,               
	MSCTXAMT,               
	ORMSCTAX,               
	TAXDTSLS,               
	ORTOTSLS,              
	TDTTXSLS,               
	ORTXSLS,                
	0 "BKOUTTAX" 
 
from  
	RM30601  
GO
GRANT SELECT ON  [dbo].[ReqRecvDocTax] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRecvDocTax] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRecvDocTax] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRecvDocTax] TO [DYNGRP]
GO
