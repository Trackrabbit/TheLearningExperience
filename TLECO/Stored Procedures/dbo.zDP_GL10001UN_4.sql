SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL10001UN_4] (@BS int, @JRNENTRY int, @JRNENTRY_RS int, @JRNENTRY_RE int) AS /* 14.00.0084.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_TS, DEX_ROW_ID FROM .GL10001 WHERE ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_TS, DEX_ROW_ID FROM .GL10001 WHERE JRNENTRY = @JRNENTRY_RS AND ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_TS, DEX_ROW_ID FROM .GL10001 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ( JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10001UN_4] TO [DYNGRP]
GO
