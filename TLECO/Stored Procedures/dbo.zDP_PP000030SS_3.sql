SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000030SS_3] (@PP_Profile_Name char(21), @USERID char(15)) AS  set nocount on SELECT TOP 1  PP_User_Security_Type, USERID, PP_Profile_Name, PP_User_Access, PP_Edit_Profile_Original, PP_Edit_Profile_Offset_A, PP_Edit_Profile_Deferred, PP_Edit_Profile_CI_Accou, PP_Edit_Profile_Transfer, PP_Edit_Profile_Start_Da, PP_Edit_Profile_Calculat, PP_Edit_Profile_Periods, PP_Edit_Profile_Miscella, PP_Edit_Debit_Credit, PP_Module, DEX_ROW_ID FROM .PP000030 WHERE PP_Profile_Name = @PP_Profile_Name AND USERID = @USERID ORDER BY PP_Profile_Name ASC, USERID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000030SS_3] TO [DYNGRP]
GO
