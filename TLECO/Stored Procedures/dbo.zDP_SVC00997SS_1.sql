SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00997SS_1] (@SVC_Module char(3), @SVC_Form_Name char(33), @SVC_Window_Name char(33), @SVC_Doc_Type smallint, @SVC_Option char(11)) AS  set nocount on SELECT TOP 1  SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type, DEX_ROW_ID FROM .SVC00997 WHERE SVC_Module = @SVC_Module AND SVC_Form_Name = @SVC_Form_Name AND SVC_Window_Name = @SVC_Window_Name AND SVC_Doc_Type = @SVC_Doc_Type AND SVC_Option = @SVC_Option ORDER BY SVC_Module DESC, SVC_Form_Name ASC, SVC_Window_Name ASC, SVC_Doc_Type ASC, SVC_Option ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00997SS_1] TO [DYNGRP]
GO
