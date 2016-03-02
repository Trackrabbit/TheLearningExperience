SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466005N_1] (@BS int, @VCHRNMBR char(21), @DOCTYPE smallint, @VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, BSSI_Description, BSSI_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .BS466005 WHERE ( VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, DOCTYPE ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, BSSI_Description, BSSI_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .BS466005 WHERE VCHRNMBR = @VCHRNMBR_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, DOCTYPE ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, BSSI_Description, BSSI_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .BS466005 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( VCHRNMBR = @VCHRNMBR AND DOCTYPE > @DOCTYPE OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, DOCTYPE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466005N_1] TO [DYNGRP]
GO
