SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27651L_1] (@CHEKBKID_RS char(15), @CHEKBKID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  ME_NonNegotiableWord, ME_Check_STB_FileNEW, ME_Overflow_STB_FileNEW, CHEKBKID, ME_Refund_Checks_STB_Fil, ME_Refund_Checks_Overflo, DEX_ROW_ID FROM .ME27651 ORDER BY CHEKBKID DESC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  ME_NonNegotiableWord, ME_Check_STB_FileNEW, ME_Overflow_STB_FileNEW, CHEKBKID, ME_Refund_Checks_STB_Fil, ME_Refund_Checks_Overflo, DEX_ROW_ID FROM .ME27651 WHERE CHEKBKID = @CHEKBKID_RS ORDER BY CHEKBKID DESC END ELSE BEGIN SELECT TOP 25  ME_NonNegotiableWord, ME_Check_STB_FileNEW, ME_Overflow_STB_FileNEW, CHEKBKID, ME_Refund_Checks_STB_Fil, ME_Refund_Checks_Overflo, DEX_ROW_ID FROM .ME27651 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE ORDER BY CHEKBKID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27651L_1] TO [DYNGRP]
GO
