SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00997SD] (@SVC_Module char(3), @SVC_Form_Name char(33), @SVC_Window_Name char(33), @SVC_Doc_Type smallint, @SVC_Option char(11), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC00997 WHERE SVC_Module = @SVC_Module AND SVC_Form_Name = @SVC_Form_Name AND SVC_Window_Name = @SVC_Window_Name AND SVC_Doc_Type = @SVC_Doc_Type AND SVC_Option = @SVC_Option AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC00997 WHERE SVC_Module = @SVC_Module AND SVC_Form_Name = @SVC_Form_Name AND SVC_Window_Name = @SVC_Window_Name AND SVC_Doc_Type = @SVC_Doc_Type AND SVC_Option = @SVC_Option SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00997SD] TO [DYNGRP]
GO
