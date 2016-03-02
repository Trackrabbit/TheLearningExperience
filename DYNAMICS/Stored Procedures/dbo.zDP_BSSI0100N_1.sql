SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BSSI0100N_1] (@BS int, @SETUPKEY smallint, @SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, BSSI_Registration, BSSI_Registration_Key2, BSSI_Registration_Key3, BSSI_Registration_Key4, BSSI_Registration_Trail_, BSSI_Registration_Trail2, BSSI_Registration_Trail3, BSSI_Registration_Trail4, NOTEINDX, DEX_ROW_ID FROM .BSSI0100 WHERE ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Registration, BSSI_Registration_Key2, BSSI_Registration_Key3, BSSI_Registration_Key4, BSSI_Registration_Trail_, BSSI_Registration_Trail2, BSSI_Registration_Trail3, BSSI_Registration_Trail4, NOTEINDX, DEX_ROW_ID FROM .BSSI0100 WHERE SETUPKEY = @SETUPKEY_RS AND ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Registration, BSSI_Registration_Key2, BSSI_Registration_Key3, BSSI_Registration_Key4, BSSI_Registration_Trail_, BSSI_Registration_Trail2, BSSI_Registration_Trail3, BSSI_Registration_Trail4, NOTEINDX, DEX_ROW_ID FROM .BSSI0100 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE AND ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BSSI0100N_1] TO [DYNGRP]
GO
