SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7113100L_1] (@BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @VCHNUMWK_RS char(17), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @VCHNUMWK_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, VCHNUMWK, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7113100 ORDER BY BCHSOURC DESC, BACHNUMB DESC, VCHNUMWK DESC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, VCHNUMWK, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7113100 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE ORDER BY BCHSOURC DESC, BACHNUMB DESC, VCHNUMWK DESC END ELSE BEGIN SELECT TOP 25  BCHSOURC, BACHNUMB, VCHNUMWK, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7113100 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE ORDER BY BCHSOURC DESC, BACHNUMB DESC, VCHNUMWK DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7113100L_1] TO [DYNGRP]
GO
