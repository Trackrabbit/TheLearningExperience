SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466005L_1] (@VCHRNMBR_RS char(21), @DOCTYPE_RS smallint, @VCHRNMBR_RE char(21), @DOCTYPE_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, BSSI_Description, BSSI_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .BS466005 ORDER BY VCHRNMBR DESC, DOCTYPE DESC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, BSSI_Description, BSSI_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .BS466005 WHERE VCHRNMBR = @VCHRNMBR_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY VCHRNMBR DESC, DOCTYPE DESC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, BSSI_Description, BSSI_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .BS466005 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY VCHRNMBR DESC, DOCTYPE DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466005L_1] TO [DYNGRP]
GO
