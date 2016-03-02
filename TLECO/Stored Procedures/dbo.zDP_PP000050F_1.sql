SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000050F_1] (@UNIQKEY_RS char(1), @UNIQKEY_RE char(1)) AS  set nocount on IF @UNIQKEY_RS IS NULL BEGIN SELECT TOP 25  UNIQKEY, PP_User_ID_1, PP_User_ID_2, PP_User_ID_3, PP_User_ID_4, PP_User_ID_5, PP_User_ID_6, PP_User_ID_7, PP_User_ID_8, PP_User_ID_9, PP_Window_Name_1, PP_Window_Name_2, PP_Window_Name_3, PP_Window_Name_4, PP_Window_Name_5, PP_Window_Name_6, PP_Window_Name_7, PP_Window_Name_8, PP_Window_Name_9, DEX_ROW_ID FROM .PP000050 ORDER BY UNIQKEY ASC END ELSE IF @UNIQKEY_RS = @UNIQKEY_RE BEGIN SELECT TOP 25  UNIQKEY, PP_User_ID_1, PP_User_ID_2, PP_User_ID_3, PP_User_ID_4, PP_User_ID_5, PP_User_ID_6, PP_User_ID_7, PP_User_ID_8, PP_User_ID_9, PP_Window_Name_1, PP_Window_Name_2, PP_Window_Name_3, PP_Window_Name_4, PP_Window_Name_5, PP_Window_Name_6, PP_Window_Name_7, PP_Window_Name_8, PP_Window_Name_9, DEX_ROW_ID FROM .PP000050 WHERE UNIQKEY = @UNIQKEY_RS ORDER BY UNIQKEY ASC END ELSE BEGIN SELECT TOP 25  UNIQKEY, PP_User_ID_1, PP_User_ID_2, PP_User_ID_3, PP_User_ID_4, PP_User_ID_5, PP_User_ID_6, PP_User_ID_7, PP_User_ID_8, PP_User_ID_9, PP_Window_Name_1, PP_Window_Name_2, PP_Window_Name_3, PP_Window_Name_4, PP_Window_Name_5, PP_Window_Name_6, PP_Window_Name_7, PP_Window_Name_8, PP_Window_Name_9, DEX_ROW_ID FROM .PP000050 WHERE UNIQKEY BETWEEN @UNIQKEY_RS AND @UNIQKEY_RE ORDER BY UNIQKEY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000050F_1] TO [DYNGRP]
GO
