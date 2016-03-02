SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCGL10002UN_3] (@BS int, @JRNENTRY int, @ACTINDX int, @JRNENTRY_RS int, @ACTINDX_RS int, @JRNENTRY_RE int, @ACTINDX_RE int) AS /* 14.00.0084.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, ACTNUMST, ACTDESCR, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_ID FROM .NCGL10002 WHERE ( JRNENTRY = @JRNENTRY AND ACTINDX > @ACTINDX OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, ACTNUMST, ACTDESCR, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_ID FROM .NCGL10002 WHERE JRNENTRY = @JRNENTRY_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( JRNENTRY = @JRNENTRY AND ACTINDX > @ACTINDX OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, ACTNUMST, ACTDESCR, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_ID FROM .NCGL10002 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( JRNENTRY = @JRNENTRY AND ACTINDX > @ACTINDX OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, ACTINDX ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCGL10002UN_3] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCGL10002UN_3] TO [public]
GO