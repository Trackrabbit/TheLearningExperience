SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME276001L_1] (@SEQNUMBR_RS int, @SEQNUMBR_RE int) AS /* 14.00.0084.000 */ set nocount on IF @SEQNUMBR_RS IS NULL BEGIN SELECT TOP 25  ME_Key_Array_1, ME_Key_Array_2, ME_Key_Array_3, ME_Key_Array_4, ME_Key_Array_5, ME_Key_Array_6, ME_Key_Array_7, ME_Key_Array_8, ME_Key_Array_9, ME_Key_Array_10, SEQNUMBR, ME_User_Count_Array_1, ME_User_Count_Array_2, ME_User_Count_Array_3, ME_User_Count_Array_4, ME_User_Count_Array_5, ME_User_Count_Array_6, ME_User_Count_Array_7, ME_User_Count_Array_8, ME_User_Count_Array_9, ME_User_Count_Array_10, DEX_ROW_ID FROM .ME276001 ORDER BY SEQNUMBR DESC END ELSE IF @SEQNUMBR_RS = @SEQNUMBR_RE BEGIN SELECT TOP 25  ME_Key_Array_1, ME_Key_Array_2, ME_Key_Array_3, ME_Key_Array_4, ME_Key_Array_5, ME_Key_Array_6, ME_Key_Array_7, ME_Key_Array_8, ME_Key_Array_9, ME_Key_Array_10, SEQNUMBR, ME_User_Count_Array_1, ME_User_Count_Array_2, ME_User_Count_Array_3, ME_User_Count_Array_4, ME_User_Count_Array_5, ME_User_Count_Array_6, ME_User_Count_Array_7, ME_User_Count_Array_8, ME_User_Count_Array_9, ME_User_Count_Array_10, DEX_ROW_ID FROM .ME276001 WHERE SEQNUMBR = @SEQNUMBR_RS ORDER BY SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  ME_Key_Array_1, ME_Key_Array_2, ME_Key_Array_3, ME_Key_Array_4, ME_Key_Array_5, ME_Key_Array_6, ME_Key_Array_7, ME_Key_Array_8, ME_Key_Array_9, ME_Key_Array_10, SEQNUMBR, ME_User_Count_Array_1, ME_User_Count_Array_2, ME_User_Count_Array_3, ME_User_Count_Array_4, ME_User_Count_Array_5, ME_User_Count_Array_6, ME_User_Count_Array_7, ME_User_Count_Array_8, ME_User_Count_Array_9, ME_User_Count_Array_10, DEX_ROW_ID FROM .ME276001 WHERE SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SEQNUMBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME276001L_1] TO [DYNGRP]
GO