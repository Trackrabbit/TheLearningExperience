SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50101N_2] (@BS int, @JRNENTRY int, @SQNCLINE numeric(19,5), @DEX_ROW_ID int, @JRNENTRY_RS int, @SQNCLINE_RS numeric(19,5), @JRNENTRY_RE int, @SQNCLINE_RE numeric(19,5)) AS  set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  USERID, BCHSOURC, BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, OFFINDX, GLLINMSG, GLLINMS2, TRXDATE, ACCTTYPE, DSCRIPTN, CURNCYID, CURRNIDX, FUNCRIDX, INTERID, ACTNUMST, ACTDESCR, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, MCTRXSTT, XCHGRATE, DENXRATE, DEX_ROW_ID FROM .GL50101 WHERE ( JRNENTRY = @JRNENTRY AND SQNCLINE = @SQNCLINE AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC, DEX_ROW_ID ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  USERID, BCHSOURC, BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, OFFINDX, GLLINMSG, GLLINMS2, TRXDATE, ACCTTYPE, DSCRIPTN, CURNCYID, CURRNIDX, FUNCRIDX, INTERID, ACTNUMST, ACTDESCR, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, MCTRXSTT, XCHGRATE, DENXRATE, DEX_ROW_ID FROM .GL50101 WHERE JRNENTRY = @JRNENTRY_RS AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE AND ( JRNENTRY = @JRNENTRY AND SQNCLINE = @SQNCLINE AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, BCHSOURC, BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, OFFINDX, GLLINMSG, GLLINMS2, TRXDATE, ACCTTYPE, DSCRIPTN, CURNCYID, CURRNIDX, FUNCRIDX, INTERID, ACTNUMST, ACTDESCR, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, ORCTRNUM, ORDOCNUM, ORMSTRID, ORMSTRNM, ORTRXTYP, MCTRXSTT, XCHGRATE, DENXRATE, DEX_ROW_ID FROM .GL50101 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE AND ( JRNENTRY = @JRNENTRY AND SQNCLINE = @SQNCLINE AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50101N_2] TO [DYNGRP]
GO
