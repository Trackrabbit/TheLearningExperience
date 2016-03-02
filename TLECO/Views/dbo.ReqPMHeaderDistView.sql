SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ReqPMHeaderDistView] AS 
select 
	2 "TrxState", -- OPEN 
	VCHRNMBR, 
	DSTSQNUM, 
	DISTTYPE, 
	DistRef, 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = PM10100.DSTINDX) "ACTNUMST", 
	DEBITAMT, 
	CRDTAMNT, 
	ORDBTAMT, 
	ORCRDAMT, 
	(select CMPANYID from DYNAMICS..SY01500 where INTERID = PM10100.INTERID) "INTERID", 
	PSTGSTUS , 
	PSTGDATE                                               
from  
	PM10100 
 
union all 
 
select 
	3 "TrxState", -- HISTORY 
	VCHRNMBR, 
	DSTSQNUM, 
	DISTTYPE, 
	DistRef, 
	(select ACTNUMST from GL00105 where GL00105.ACTINDX = PM30600.DSTINDX) "ACTNUMST", 
	DEBITAMT, 
	CRDTAMNT, 
	ORDBTAMT, 
	ORCRDAMT, 
	NULL, -- INTERID 
	PSTGSTUS , 
	PSTGDATE       
from  
	PM30600 
 
GO
GRANT SELECT ON  [dbo].[ReqPMHeaderDistView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqPMHeaderDistView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqPMHeaderDistView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqPMHeaderDistView] TO [DYNGRP]
GO
