SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7123100N_1] (@BS int, @DOCTYPE smallint, @VCHRNMBR char(21), @DOCTYPE_RS smallint, @VCHRNMBR_RS char(21), @DOCTYPE_RE smallint, @VCHRNMBR_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7123100 WHERE ( DOCTYPE = @DOCTYPE AND VCHRNMBR > @VCHRNMBR OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, VCHRNMBR ASC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7123100 WHERE DOCTYPE = @DOCTYPE_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND ( DOCTYPE = @DOCTYPE AND VCHRNMBR > @VCHRNMBR OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, VCHRNMBR ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, VCHRNMBR, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7123100 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND ( DOCTYPE = @DOCTYPE AND VCHRNMBR > @VCHRNMBR OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, VCHRNMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7123100N_1] TO [DYNGRP]
GO
