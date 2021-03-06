SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27652N_1] (@BS int, @CHEKBKID char(15), @CHEKBKID_RS char(15), @CHEKBKID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  ME_NonNegotiableWord, ME_Check_STB_FileNEW, ME_Overflow_STB_FileNEW, CHEKBKID, DEX_ROW_ID FROM .ME27652 WHERE ( CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  ME_NonNegotiableWord, ME_Check_STB_FileNEW, ME_Overflow_STB_FileNEW, CHEKBKID, DEX_ROW_ID FROM .ME27652 WHERE CHEKBKID = @CHEKBKID_RS AND ( CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC END ELSE BEGIN SELECT TOP 25  ME_NonNegotiableWord, ME_Check_STB_FileNEW, ME_Overflow_STB_FileNEW, CHEKBKID, DEX_ROW_ID FROM .ME27652 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND ( CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27652N_1] TO [DYNGRP]
GO
