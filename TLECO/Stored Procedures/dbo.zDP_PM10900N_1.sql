SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10900N_1] (@BS int, @USERID char(15), @TIME1 datetime, @DOCNUMBR char(21), @VCHRNMBR char(21), @CNTRLTYP smallint, @DEYDESCR char(31), @USERID_RS char(15), @TIME1_RS datetime, @DOCNUMBR_RS char(21), @VCHRNMBR_RS char(21), @CNTRLTYP_RS smallint, @DEYDESCR_RS char(31), @USERID_RE char(15), @TIME1_RE datetime, @DOCNUMBR_RE char(21), @VCHRNMBR_RE char(21), @CNTRLTYP_RE smallint, @DEYDESCR_RE char(31)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, ORDOCAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, OR1099AM, WROFAMNT, ORWROFAM, DISAMTAV, ODISAMTAV, PRCHAMNT, OPURAMT, TRDISAMT, ORTDISAM, MSCCHAMT, ORMISCAMT, FRTAMNT, ORFRTAMT, TAXAMNT, ORTAXAMT, TTLPYMTS, OTOTPAY, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, VOIDDATE, DEX_ROW_ID FROM .PM10900 WHERE ( USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DEYDESCR > @DEYDESCR OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR > @VCHRNMBR OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR > @DOCNUMBR OR USERID = @USERID AND TIME1 > @TIME1 OR USERID > @USERID ) ORDER BY USERID ASC, TIME1 ASC, DOCNUMBR ASC, VCHRNMBR ASC, CNTRLTYP ASC, DEYDESCR ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, ORDOCAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, OR1099AM, WROFAMNT, ORWROFAM, DISAMTAV, ODISAMTAV, PRCHAMNT, OPURAMT, TRDISAMT, ORTDISAM, MSCCHAMT, ORMISCAMT, FRTAMNT, ORFRTAMT, TAXAMNT, ORTAXAMT, TTLPYMTS, OTOTPAY, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, VOIDDATE, DEX_ROW_ID FROM .PM10900 WHERE USERID = @USERID_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND DEYDESCR BETWEEN @DEYDESCR_RS AND @DEYDESCR_RE AND ( USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DEYDESCR > @DEYDESCR OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR > @VCHRNMBR OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR > @DOCNUMBR OR USERID = @USERID AND TIME1 > @TIME1 OR USERID > @USERID ) ORDER BY USERID ASC, TIME1 ASC, DOCNUMBR ASC, VCHRNMBR ASC, CNTRLTYP ASC, DEYDESCR ASC END ELSE BEGIN SELECT TOP 25  USERID, TIME1, VENDORID, DOCTYPE, VCHRNMBR, PMVDMSGS, DOCDATE, DOCNUMBR, DOCAMNT, ORDOCAMT, CURTRXAM, ORCTRXAM, DISTKNAM, ORDISTKN, DISCAMNT, DISCDATE, TRXSORCE, TEN99AMNT, OR1099AM, WROFAMNT, ORWROFAM, DISAMTAV, ODISAMTAV, PRCHAMNT, OPURAMT, TRDISAMT, ORTDISAM, MSCCHAMT, ORMISCAMT, FRTAMNT, ORFRTAMT, TAXAMNT, ORTAXAMT, TTLPYMTS, OTOTPAY, CNTRLTYP, CHANGED, PSTGSTUS, CHEKBKID, PSTGDATE, CURNCYID, DEYDESCR, VOIDDATE, DEX_ROW_ID FROM .PM10900 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND DEYDESCR BETWEEN @DEYDESCR_RS AND @DEYDESCR_RE AND ( USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND DEYDESCR > @DEYDESCR OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR > @VCHRNMBR OR USERID = @USERID AND TIME1 = @TIME1 AND DOCNUMBR > @DOCNUMBR OR USERID = @USERID AND TIME1 > @TIME1 OR USERID > @USERID ) ORDER BY USERID ASC, TIME1 ASC, DOCNUMBR ASC, VCHRNMBR ASC, CNTRLTYP ASC, DEYDESCR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10900N_1] TO [DYNGRP]
GO