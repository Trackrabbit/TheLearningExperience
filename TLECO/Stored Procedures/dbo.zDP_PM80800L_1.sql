SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80800L_1] (@TRXSORCE_RS char(13), @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @TRXSORCE_RE char(13), @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, VCHRNMBR, DOCTYPE, CAMPYNBR, CHEKDATE, CHEKNMBR, CHAMCBID, CHEKAMNT, DEX_ROW_ID FROM .PM80800 ORDER BY TRXSORCE DESC, VCHRNMBR DESC, DOCTYPE DESC, DEX_ROW_ID DESC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  TRXSORCE, VCHRNMBR, DOCTYPE, CAMPYNBR, CHEKDATE, CHEKNMBR, CHAMCBID, CHEKAMNT, DEX_ROW_ID FROM .PM80800 WHERE TRXSORCE = @TRXSORCE_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY TRXSORCE DESC, VCHRNMBR DESC, DOCTYPE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TRXSORCE, VCHRNMBR, DOCTYPE, CAMPYNBR, CHEKDATE, CHEKNMBR, CHAMCBID, CHEKAMNT, DEX_ROW_ID FROM .PM80800 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY TRXSORCE DESC, VCHRNMBR DESC, DOCTYPE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80800L_1] TO [DYNGRP]
GO
