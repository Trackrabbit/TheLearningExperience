SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqRecvDocComm] AS 
select 
	RMDTYPAL, 
	DOCNUMBR, 
	SEQNUMBR, 
	SLPRSNID, 
	SALSTERR, 
	COMPRCNT, 
	COMDLRAM, 
	PRCTOSAL, 
	NCOMAMNT, 
	ORNCMAMT, 
	ORCOMAMT, 
	SLSAMNT,    
	ORSLSAMT   
from 
	RM10501       
 
union all 
 
select 
	RMDTYPAL, 
	DOCNUMBR, 
	SEQNUMBR, 
	SLPRSNID, 
	SALSTERR, 
	COMPRCNT, 
	COMDLRAM, 
	PRCTOSAL, 
	NCOMAMNT, 
	ORNCMAMT, 
	ORCOMAMT, 
	SLSAMNT,    
	ORSLSAMT   
from 
	RM30501                                                                                                                                                                                               
                                                                                                                                                                                         
GO
GRANT SELECT ON  [dbo].[ReqRecvDocComm] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqRecvDocComm] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqRecvDocComm] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqRecvDocComm] TO [DYNGRP]
GO
