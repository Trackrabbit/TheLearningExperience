SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM50505L_1] (@TRXSORCE_RS char(13), @POSTEDDT_RS datetime, @CUSTNMBR_RS char(15), @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @TRXSORCE_RE char(13), @POSTEDDT_RE datetime, @CUSTNMBR_RE char(15), @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  POSTEDDT, CUSTNMBR, TRXSORCE, ORTRXSRC, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, RMDTYPAL, DEX_ROW_ID FROM .RM50505 ORDER BY TRXSORCE DESC, POSTEDDT DESC, CUSTNMBR DESC, RMDTYPAL DESC, DOCNUMBR DESC, DEX_ROW_ID DESC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  POSTEDDT, CUSTNMBR, TRXSORCE, ORTRXSRC, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, RMDTYPAL, DEX_ROW_ID FROM .RM50505 WHERE TRXSORCE = @TRXSORCE_RS AND POSTEDDT BETWEEN @POSTEDDT_RS AND @POSTEDDT_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY TRXSORCE DESC, POSTEDDT DESC, CUSTNMBR DESC, RMDTYPAL DESC, DOCNUMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  POSTEDDT, CUSTNMBR, TRXSORCE, ORTRXSRC, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, RMDTYPAL, DEX_ROW_ID FROM .RM50505 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND POSTEDDT BETWEEN @POSTEDDT_RS AND @POSTEDDT_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY TRXSORCE DESC, POSTEDDT DESC, CUSTNMBR DESC, RMDTYPAL DESC, DOCNUMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM50505L_1] TO [DYNGRP]
GO