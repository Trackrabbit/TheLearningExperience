SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112100L_1] (@RMDTYPAL_RS smallint, @RMDNUMWK_RS char(17), @RMDTYPAL_RE smallint, @RMDNUMWK_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @RMDTYPAL_RS IS NULL BEGIN SELECT TOP 25  RMDTYPAL, RMDNUMWK, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7112100 ORDER BY RMDTYPAL DESC, RMDNUMWK DESC END ELSE IF @RMDTYPAL_RS = @RMDTYPAL_RE BEGIN SELECT TOP 25  RMDTYPAL, RMDNUMWK, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7112100 WHERE RMDTYPAL = @RMDTYPAL_RS AND RMDNUMWK BETWEEN @RMDNUMWK_RS AND @RMDNUMWK_RE ORDER BY RMDTYPAL DESC, RMDNUMWK DESC END ELSE BEGIN SELECT TOP 25  RMDTYPAL, RMDNUMWK, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7112100 WHERE RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND RMDNUMWK BETWEEN @RMDNUMWK_RS AND @RMDNUMWK_RE ORDER BY RMDTYPAL DESC, RMDNUMWK DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112100L_1] TO [DYNGRP]
GO
