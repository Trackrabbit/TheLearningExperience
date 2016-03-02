SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM50504F_1] (@TRXSORCE_RS char(13), @PSTGDATE_RS datetime, @VENDORID_RS char(15), @CNTRLTYP_RS smallint, @VCHRNMBR_RS char(21), @TRXSORCE_RE char(13), @PSTGDATE_RE datetime, @VENDORID_RE char(15), @CNTRLTYP_RE smallint, @VCHRNMBR_RE char(21)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  PSTGDATE, VENDORID, TRXSORCE, VCHRNMBR, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, CNTRLTYP, DEX_ROW_ID FROM .PM50504 ORDER BY TRXSORCE ASC, PSTGDATE ASC, VENDORID ASC, CNTRLTYP ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  PSTGDATE, VENDORID, TRXSORCE, VCHRNMBR, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, CNTRLTYP, DEX_ROW_ID FROM .PM50504 WHERE TRXSORCE = @TRXSORCE_RS AND PSTGDATE BETWEEN @PSTGDATE_RS AND @PSTGDATE_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY TRXSORCE ASC, PSTGDATE ASC, VENDORID ASC, CNTRLTYP ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PSTGDATE, VENDORID, TRXSORCE, VCHRNMBR, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, CNTRLTYP, DEX_ROW_ID FROM .PM50504 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND PSTGDATE BETWEEN @PSTGDATE_RS AND @PSTGDATE_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY TRXSORCE ASC, PSTGDATE ASC, VENDORID ASC, CNTRLTYP ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM50504F_1] TO [DYNGRP]
GO
