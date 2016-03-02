SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000050SI] (@UNIQKEY char(1), @PP_User_ID_1 char(15), @PP_User_ID_2 char(15), @PP_User_ID_3 char(15), @PP_User_ID_4 char(15), @PP_User_ID_5 char(15), @PP_User_ID_6 char(15), @PP_User_ID_7 char(15), @PP_User_ID_8 char(15), @PP_User_ID_9 char(15), @PP_Window_Name_1 char(41), @PP_Window_Name_2 char(41), @PP_Window_Name_3 char(41), @PP_Window_Name_4 char(41), @PP_Window_Name_5 char(41), @PP_Window_Name_6 char(41), @PP_Window_Name_7 char(41), @PP_Window_Name_8 char(41), @PP_Window_Name_9 char(41), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP000050 (UNIQKEY, PP_User_ID_1, PP_User_ID_2, PP_User_ID_3, PP_User_ID_4, PP_User_ID_5, PP_User_ID_6, PP_User_ID_7, PP_User_ID_8, PP_User_ID_9, PP_Window_Name_1, PP_Window_Name_2, PP_Window_Name_3, PP_Window_Name_4, PP_Window_Name_5, PP_Window_Name_6, PP_Window_Name_7, PP_Window_Name_8, PP_Window_Name_9) VALUES ( @UNIQKEY, @PP_User_ID_1, @PP_User_ID_2, @PP_User_ID_3, @PP_User_ID_4, @PP_User_ID_5, @PP_User_ID_6, @PP_User_ID_7, @PP_User_ID_8, @PP_User_ID_9, @PP_Window_Name_1, @PP_Window_Name_2, @PP_Window_Name_3, @PP_Window_Name_4, @PP_Window_Name_5, @PP_Window_Name_6, @PP_Window_Name_7, @PP_Window_Name_8, @PP_Window_Name_9) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000050SI] TO [DYNGRP]
GO
