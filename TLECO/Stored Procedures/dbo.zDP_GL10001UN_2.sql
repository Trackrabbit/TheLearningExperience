SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL10001UN_2] (@BS int, @ACTINDX int, @ACTINDX_RS int, @ACTINDX_RE int) AS /* 14.00.0084.000 */ set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_TS, DEX_ROW_ID FROM .GL10001 WHERE ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DEX_ROW_ID ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_TS, DEX_ROW_ID FROM .GL10001 WHERE ACTINDX = @ACTINDX_RS AND ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, XCHGRATE, DSCRIPTN, GLLINMSG, GLLINMS2, CURRNIDX, GLLINVAL, ACCTTYPE, FXDORVAR, BALFRCLC, PSTNGTYP, DECPLACS, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, OrigSeqNum, ORTRXDESC, DTA_GL_Status, INTERID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RTCLCMTD, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DENXRATE, MCTRXSTT, LNESTAT, CorrespondingUnit, DEX_ROW_TS, DEX_ROW_ID FROM .GL10001 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10001UN_2] TO [DYNGRP]
GO
