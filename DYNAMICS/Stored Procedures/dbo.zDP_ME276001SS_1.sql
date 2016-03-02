SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME276001SS_1] (@SEQNUMBR int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ME_Key_Array_1, ME_Key_Array_2, ME_Key_Array_3, ME_Key_Array_4, ME_Key_Array_5, ME_Key_Array_6, ME_Key_Array_7, ME_Key_Array_8, ME_Key_Array_9, ME_Key_Array_10, SEQNUMBR, ME_User_Count_Array_1, ME_User_Count_Array_2, ME_User_Count_Array_3, ME_User_Count_Array_4, ME_User_Count_Array_5, ME_User_Count_Array_6, ME_User_Count_Array_7, ME_User_Count_Array_8, ME_User_Count_Array_9, ME_User_Count_Array_10, DEX_ROW_ID FROM .ME276001 WHERE SEQNUMBR = @SEQNUMBR ORDER BY SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME276001SS_1] TO [DYNGRP]
GO
