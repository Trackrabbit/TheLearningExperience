SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM10000L_2] (@DUEDATE_RS datetime, @VENDORID_RS char(15), @DOCNUMBR_RS char(21), @DUEDATE_RE datetime, @VENDORID_RE char(15), @DOCNUMBR_RE char(21)) AS  set nocount on IF @DUEDATE_RS IS NULL BEGIN SELECT TOP 25  VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, CURTRXAM, DUEDATE, DOCAMNT, VCHRNMBR, TRXSORCE, DEX_ROW_ID FROM .CFM10000 ORDER BY DUEDATE DESC, VENDORID DESC, DOCNUMBR DESC END ELSE IF @DUEDATE_RS = @DUEDATE_RE BEGIN SELECT TOP 25  VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, CURTRXAM, DUEDATE, DOCAMNT, VCHRNMBR, TRXSORCE, DEX_ROW_ID FROM .CFM10000 WHERE DUEDATE = @DUEDATE_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY DUEDATE DESC, VENDORID DESC, DOCNUMBR DESC END ELSE BEGIN SELECT TOP 25  VENDORID, DOCTYPE, DOCDATE, DOCNUMBR, CURTRXAM, DUEDATE, DOCAMNT, VCHRNMBR, TRXSORCE, DEX_ROW_ID FROM .CFM10000 WHERE DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY DUEDATE DESC, VENDORID DESC, DOCNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM10000L_2] TO [DYNGRP]
GO