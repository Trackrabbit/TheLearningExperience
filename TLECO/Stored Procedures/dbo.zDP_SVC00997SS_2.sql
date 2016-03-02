SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00997SS_2] (@SVC_Option char(11), @SVC_Module char(3)) AS  set nocount on SELECT TOP 1  SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type, DEX_ROW_ID FROM .SVC00997 WHERE SVC_Option = @SVC_Option AND SVC_Module = @SVC_Module ORDER BY SVC_Option ASC, SVC_Module ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00997SS_2] TO [DYNGRP]
GO
