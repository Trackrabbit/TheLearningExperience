SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00997UN_2] (@BS int, @SVC_Option char(11), @SVC_Module char(3), @SVC_Option_RS char(11), @SVC_Module_RS char(3), @SVC_Option_RE char(11), @SVC_Module_RE char(3)) AS  set nocount on IF @SVC_Option_RS IS NULL BEGIN SELECT TOP 25  SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type, DEX_ROW_ID FROM .SVC00997 WHERE ( SVC_Option = @SVC_Option AND SVC_Module > @SVC_Module OR SVC_Option > @SVC_Option ) ORDER BY SVC_Option ASC, SVC_Module ASC, DEX_ROW_ID ASC END ELSE IF @SVC_Option_RS = @SVC_Option_RE BEGIN SELECT TOP 25  SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type, DEX_ROW_ID FROM .SVC00997 WHERE SVC_Option = @SVC_Option_RS AND SVC_Module BETWEEN @SVC_Module_RS AND @SVC_Module_RE AND ( SVC_Option = @SVC_Option AND SVC_Module > @SVC_Module OR SVC_Option > @SVC_Option ) ORDER BY SVC_Option ASC, SVC_Module ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type, DEX_ROW_ID FROM .SVC00997 WHERE SVC_Option BETWEEN @SVC_Option_RS AND @SVC_Option_RE AND SVC_Module BETWEEN @SVC_Module_RS AND @SVC_Module_RE AND ( SVC_Option = @SVC_Option AND SVC_Module > @SVC_Module OR SVC_Option > @SVC_Option ) ORDER BY SVC_Option ASC, SVC_Module ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00997UN_2] TO [DYNGRP]
GO
