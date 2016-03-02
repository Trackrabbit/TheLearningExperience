SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40202SD] (@Workflow_Type_Name char(51), @Email_Message_Type smallint, @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .WF40202 WHERE Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type = @Email_Message_Type AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WF40202 WHERE Workflow_Type_Name = @Workflow_Type_Name AND Email_Message_Type = @Email_Message_Type AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40202SD] TO [DYNGRP]
GO
