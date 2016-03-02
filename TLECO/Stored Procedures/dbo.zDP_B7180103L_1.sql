SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7180103L_1] (@POPRCTNM_RS char(17), @POPRCTNM_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @POPRCTNM_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7180103 ORDER BY POPRCTNM DESC END ELSE IF @POPRCTNM_RS = @POPRCTNM_RE BEGIN SELECT TOP 25  POPRCTNM, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7180103 WHERE POPRCTNM = @POPRCTNM_RS ORDER BY POPRCTNM DESC END ELSE BEGIN SELECT TOP 25  POPRCTNM, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7180103 WHERE POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE ORDER BY POPRCTNM DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7180103L_1] TO [DYNGRP]
GO
