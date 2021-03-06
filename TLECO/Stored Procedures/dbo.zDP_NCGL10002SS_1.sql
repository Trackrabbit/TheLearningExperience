SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCGL10002SS_1] (@JRNENTRY int, @SQNCLINE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, ACTNUMST, ACTDESCR, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_ID FROM .NCGL10002 WHERE JRNENTRY = @JRNENTRY AND SQNCLINE = @SQNCLINE ORDER BY JRNENTRY ASC, SQNCLINE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCGL10002SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCGL10002SS_1] TO [public]
GO
