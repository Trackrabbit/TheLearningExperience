SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000050SS_1] (@UNIQKEY char(1)) AS  set nocount on SELECT TOP 1  UNIQKEY, PP_User_ID_1, PP_User_ID_2, PP_User_ID_3, PP_User_ID_4, PP_User_ID_5, PP_User_ID_6, PP_User_ID_7, PP_User_ID_8, PP_User_ID_9, PP_Window_Name_1, PP_Window_Name_2, PP_Window_Name_3, PP_Window_Name_4, PP_Window_Name_5, PP_Window_Name_6, PP_Window_Name_7, PP_Window_Name_8, PP_Window_Name_9, DEX_ROW_ID FROM .PP000050 WHERE UNIQKEY = @UNIQKEY ORDER BY UNIQKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000050SS_1] TO [DYNGRP]
GO
