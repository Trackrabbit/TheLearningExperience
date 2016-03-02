SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80800N_1] (@BS int, @TRXSORCE char(13), @VCHRNMBR char(21), @DOCTYPE smallint, @DEX_ROW_ID int, @TRXSORCE_RS char(13), @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @TRXSORCE_RE char(13), @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, VCHRNMBR, DOCTYPE, CAMPYNBR, CHEKDATE, CHEKNMBR, CHAMCBID, CHEKAMNT, DEX_ROW_ID FROM .PM80800 WHERE ( TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR TRXSORCE = @TRXSORCE AND VCHRNMBR > @VCHRNMBR OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DOCTYPE ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  TRXSORCE, VCHRNMBR, DOCTYPE, CAMPYNBR, CHEKDATE, CHEKNMBR, CHAMCBID, CHEKAMNT, DEX_ROW_ID FROM .PM80800 WHERE TRXSORCE = @TRXSORCE_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR TRXSORCE = @TRXSORCE AND VCHRNMBR > @VCHRNMBR OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DOCTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, VCHRNMBR, DOCTYPE, CAMPYNBR, CHEKDATE, CHEKNMBR, CHAMCBID, CHEKAMNT, DEX_ROW_ID FROM .PM80800 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE AND DEX_ROW_ID > @DEX_ROW_ID OR TRXSORCE = @TRXSORCE AND VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR TRXSORCE = @TRXSORCE AND VCHRNMBR > @VCHRNMBR OR TRXSORCE > @TRXSORCE ) ORDER BY TRXSORCE ASC, VCHRNMBR ASC, DOCTYPE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80800N_1] TO [DYNGRP]
GO