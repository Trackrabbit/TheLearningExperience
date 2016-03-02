SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00997SI] (@SVC_Module char(3), @SVC_Form_Name char(33), @SVC_Window_Name char(33), @SVC_Option char(11), @SVC_Option_Desc char(33), @SVC_Option_Enabled tinyint, @SVC_Option_Pswd char(11), @SVC_Doc_Type smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00997 (SVC_Module, SVC_Form_Name, SVC_Window_Name, SVC_Option, SVC_Option_Desc, SVC_Option_Enabled, SVC_Option_Pswd, SVC_Doc_Type) VALUES ( @SVC_Module, @SVC_Form_Name, @SVC_Window_Name, @SVC_Option, @SVC_Option_Desc, @SVC_Option_Enabled, @SVC_Option_Pswd, @SVC_Doc_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00997SI] TO [DYNGRP]
GO
