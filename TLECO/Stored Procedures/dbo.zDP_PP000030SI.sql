SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000030SI] (@PP_User_Security_Type smallint, @USERID char(15), @PP_Profile_Name char(21), @PP_User_Access tinyint, @PP_Edit_Profile_Original tinyint, @PP_Edit_Profile_Offset_A tinyint, @PP_Edit_Profile_Deferred tinyint, @PP_Edit_Profile_CI_Accou tinyint, @PP_Edit_Profile_Transfer tinyint, @PP_Edit_Profile_Start_Da tinyint, @PP_Edit_Profile_Calculat tinyint, @PP_Edit_Profile_Periods tinyint, @PP_Edit_Profile_Miscella tinyint, @PP_Edit_Debit_Credit tinyint, @PP_Module smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP000030 (PP_User_Security_Type, USERID, PP_Profile_Name, PP_User_Access, PP_Edit_Profile_Original, PP_Edit_Profile_Offset_A, PP_Edit_Profile_Deferred, PP_Edit_Profile_CI_Accou, PP_Edit_Profile_Transfer, PP_Edit_Profile_Start_Da, PP_Edit_Profile_Calculat, PP_Edit_Profile_Periods, PP_Edit_Profile_Miscella, PP_Edit_Debit_Credit, PP_Module) VALUES ( @PP_User_Security_Type, @USERID, @PP_Profile_Name, @PP_User_Access, @PP_Edit_Profile_Original, @PP_Edit_Profile_Offset_A, @PP_Edit_Profile_Deferred, @PP_Edit_Profile_CI_Accou, @PP_Edit_Profile_Transfer, @PP_Edit_Profile_Start_Da, @PP_Edit_Profile_Calculat, @PP_Edit_Profile_Periods, @PP_Edit_Profile_Miscella, @PP_Edit_Debit_Credit, @PP_Module) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000030SI] TO [DYNGRP]
GO
