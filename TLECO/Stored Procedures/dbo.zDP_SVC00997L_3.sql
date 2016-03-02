SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00997L_3] (@SVC_Form_Name_RS char(33), @SVC_Module_RS char(3), @SVC_Option_RS char(11), @SVC_Form_Name_RE char(33), @SVC_Module_RE char(3), @SVC_Option_RE char(11)) AS  set nocount on IF @SVC_Form_Name_RS IS NULL BEGIN SELECT TOP 25  SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type, DEX_ROW_ID FROM .SVC00997 ORDER BY SVC_Form_Name DESC, SVC_Module DESC, SVC_Option DESC, DEX_ROW_ID DESC END ELSE IF @SVC_Form_Name_RS = @SVC_Form_Name_RE BEGIN SELECT TOP 25  SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type, DEX_ROW_ID FROM .SVC00997 WHERE SVC_Form_Name = @SVC_Form_Name_RS AND SVC_Module BETWEEN @SVC_Module_RS AND @SVC_Module_RE AND SVC_Option BETWEEN @SVC_Option_RS AND @SVC_Option_RE ORDER BY SVC_Form_Name DESC, SVC_Module DESC, SVC_Option DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type, DEX_ROW_ID FROM .SVC00997 WHERE SVC_Form_Name BETWEEN @SVC_Form_Name_RS AND @SVC_Form_Name_RE AND SVC_Module BETWEEN @SVC_Module_RS AND @SVC_Module_RE AND SVC_Option BETWEEN @SVC_Option_RS AND @SVC_Option_RE ORDER BY SVC_Form_Name DESC, SVC_Module DESC, SVC_Option DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00997L_3] TO [DYNGRP]
GO
