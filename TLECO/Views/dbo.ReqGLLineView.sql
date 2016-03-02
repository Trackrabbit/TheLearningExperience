SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
-- GL Line View Joining GL10001, GL20000 and GL30000 
 
CREATE VIEW [dbo].[ReqGLLineView] AS 
select  
	1 "TrxState", -- Set to 1 for Work 
	BACHNUMB, 
	JRNENTRY, 
	'' "TRXDATE", 
	0  "RCTRXSEQ", 
	convert(bigint, SQNCLINE) "SQNCLINE", 
	XCHGRATE, 
	EXCHDATE, 
	DSCRIPTN,  
	ORCTRNUM, 
	ORDOCNUM, 
	ORMSTRID, 
	ORMSTRNM, 
	ORTRXTYP, 
	OrigSeqNum, 
	ORTRXDESC, 
	(select CMPANYID from DYNAMICS..SY01500 where GL10001.INTERID = INTERID) "CMPANYID", 
	CRDTAMNT, 
	DEBITAMT, 
	ORCRDAMT, 
	ORDBTAMT, 
	ACTINDX, 
	(Select ACTNUMST from GL00105 where GL00105.ACTINDX = GL10001.ACTINDX) "ACTNUMST", 
	0 "YEAR", -- This is a place holder so we can join on JRNENTRY and YEAR for Unioned tables 
	DEX_ROW_ID 
from  
	GL10001  
 
union all 
 
select  
	2 "TrxState", -- Set to 2 for Open 
	'', -- BACHNUMB does not exist in OPEN record 
	JRNENTRY, 
	TRXDATE, 
	convert(bigint, RCTRXSEQ), 
	convert(bigint, SEQNUMBR), 
	XCHGRATE, 
	EXCHDATE, 
	DSCRIPTN,  
	ORCTRNUM, 
	ORDOCNUM, 
	ORMSTRID, 
	ORMSTRNM, 
	ORTRXTYP, 
	OrigSeqNum, 
	REFRENCE,  
	NULL,  -- INTERID does not exist in OPEN record 
	CRDTAMNT, 
	DEBITAMT, 
	ORCRDAMT, 
	ORDBTAMT, 
	ACTINDX, 
	(Select ACTNUMST from GL00105 where GL00105.ACTINDX = GL20000.ACTINDX) "ACTNUMST", 
	OPENYEAR, 
	DEX_ROW_ID 
from  
	GL20000  
 
union all 
 
select  
	3 "TrxState", -- Set to 3 for History 
	'', -- BACHNUMB does not exist in HISTORY record 
	JRNENTRY, 
	TRXDATE, 
	convert(bigint, RCTRXSEQ), 
	convert(bigint, SEQNUMBR),  
	XCHGRATE, 
	EXCHDATE, 
	DSCRIPTN,  
	ORCTRNUM, 
	ORDOCNUM, 
	ORMSTRID, 
	ORMSTRNM, 
	ORTRXTYP, 
	OrigSeqNum, 
	REFRENCE,  
	NULL,  -- INTERID does not exist in HISTORY record 
	CRDTAMNT, 
	DEBITAMT, 
	ORCRDAMT, 
	ORDBTAMT, 
	ACTINDX, 
	(Select ACTNUMST from GL00105 where GL00105.ACTINDX = GL30000.ACTINDX) "ACTNUMST", 
	HSTYEAR, 
	DEX_ROW_ID 
from  
	GL30000  
GO
GRANT SELECT ON  [dbo].[ReqGLLineView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReqGLLineView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReqGLLineView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReqGLLineView] TO [DYNGRP]
GO
