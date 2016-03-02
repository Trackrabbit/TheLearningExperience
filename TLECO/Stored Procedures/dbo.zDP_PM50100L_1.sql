SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM50100L_1] (@USERID_RS char(15), @PRCSSQNC_RS smallint, @Status_RS smallint, @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @USERID_RE char(15), @PRCSSQNC_RE smallint, @Status_RE smallint, @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, USERID, PRCSSQNC, Status, STR1, DEX_ROW_ID FROM .PM50100 ORDER BY USERID DESC, PRCSSQNC DESC, Status DESC, VCHRNMBR DESC, DOCTYPE DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, USERID, PRCSSQNC, Status, STR1, DEX_ROW_ID FROM .PM50100 WHERE USERID = @USERID_RS AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND Status BETWEEN @Status_RS AND @Status_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY USERID DESC, PRCSSQNC DESC, Status DESC, VCHRNMBR DESC, DOCTYPE DESC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, DOCAMNT, CURTRXAM, DISTKNAM, DISCAMNT, DSCDLRAM, BACHNUMB, TRXSORCE, BCHSOURC, DISCDATE, DUEDATE, PORDNMBR, TEN99AMNT, WROFAMNT, DISAMTAV, TRXDSCRN, UN1099AM, BKTPURAM, BKTFRTAM, BKTMSCAM, VOIDED, HOLD, CHEKBKID, DINVPDOF, PPSAMDED, PPSTAXRT, PGRAMSBJ, GSTDSAMT, POSTEDDT, PTDUSRID, MODIFDT, MDFUSRID, PYENTTYP, CARDNAME, PRCHAMNT, TRDISAMT, MSCCHAMT, FRTAMNT, TAXAMNT, TTLPYMTS, CURNCYID, PYMTRMID, SHIPMTHD, TAXSCHID, PCHSCHID, FRTSCHID, MSCSCHID, PSTGDATE, DISAVTKN, CNTRLTYP, NOTEINDX, PRCTDISC, RETNAGAM, VOIDPDATE, ICTRX, Tax_Date, PRCHDATE, CORRCTN, SIMPLIFD, USERID, PRCSSQNC, Status, STR1, DEX_ROW_ID FROM .PM50100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND Status BETWEEN @Status_RS AND @Status_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY USERID DESC, PRCSSQNC DESC, Status DESC, VCHRNMBR DESC, DOCTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM50100L_1] TO [DYNGRP]
GO
