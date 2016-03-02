SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10400UN_3] (@BS int, @VENDORID char(15), @DOCNUMBR char(21), @VENDORID_RS char(15), @DOCNUMBR_RS char(21), @VENDORID_RE char(15), @DOCNUMBR_RE char(21)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, VENDORID, DOCNUMBR, DOCTYPE, DOCAMNT, DOCDATE, PSTGDATE, PYENTTYP, CHEKAMNT, CARDNAME, CURNCYID, CHEKBKID, TRXDSCRN, DISAMTAV, DISTKNAM, WROFAMNT, CURTRXAM, APPLDAMT, PMWRKMSG, PMWRKMS2, PMDSTMSG, GSTDSAMT, PPSAMDED, PPSTAXRT, PGRAMSBJ, NOTEINDX, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, RETNAGAM, Electronic, PONUMBER, DEX_ROW_ID FROM .PM10400 WHERE ( VENDORID = @VENDORID AND DOCNUMBR > @DOCNUMBR OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, VENDORID, DOCNUMBR, DOCTYPE, DOCAMNT, DOCDATE, PSTGDATE, PYENTTYP, CHEKAMNT, CARDNAME, CURNCYID, CHEKBKID, TRXDSCRN, DISAMTAV, DISTKNAM, WROFAMNT, CURTRXAM, APPLDAMT, PMWRKMSG, PMWRKMS2, PMDSTMSG, GSTDSAMT, PPSAMDED, PPSTAXRT, PGRAMSBJ, NOTEINDX, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, RETNAGAM, Electronic, PONUMBER, DEX_ROW_ID FROM .PM10400 WHERE VENDORID = @VENDORID_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( VENDORID = @VENDORID AND DOCNUMBR > @DOCNUMBR OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, VENDORID, DOCNUMBR, DOCTYPE, DOCAMNT, DOCDATE, PSTGDATE, PYENTTYP, CHEKAMNT, CARDNAME, CURNCYID, CHEKBKID, TRXDSCRN, DISAMTAV, DISTKNAM, WROFAMNT, CURTRXAM, APPLDAMT, PMWRKMSG, PMWRKMS2, PMDSTMSG, GSTDSAMT, PPSAMDED, PPSTAXRT, PGRAMSBJ, NOTEINDX, VCHRNMBR, CNTRLTYP, MODIFDT, MDFUSRID, POSTEDDT, PTDUSRID, RETNAGAM, Electronic, PONUMBER, DEX_ROW_ID FROM .PM10400 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( VENDORID = @VENDORID AND DOCNUMBR > @DOCNUMBR OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10400UN_3] TO [DYNGRP]
GO
