SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCGL10002N_1] (@BS int, @JRNENTRY int, @SQNCLINE numeric(19,5), @JRNENTRY_RS int, @SQNCLINE_RS numeric(19,5), @JRNENTRY_RE int, @SQNCLINE_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, ACTNUMST, ACTDESCR, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_ID FROM .NCGL10002 WHERE ( JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, ACTNUMST, ACTDESCR, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_ID FROM .NCGL10002 WHERE JRNENTRY = @JRNENTRY_RS AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE AND ( JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, ACTNUMST, ACTDESCR, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_ID FROM .NCGL10002 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE AND ( JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCGL10002N_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCGL10002N_1] TO [public]
GO
