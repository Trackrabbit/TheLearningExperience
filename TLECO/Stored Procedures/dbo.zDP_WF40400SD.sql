SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40400SD] (@Workflow_Type_Name char(51), @Workflow_Name char(51), @WF_Notification_Action smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .WF40400 WHERE Workflow_Type_Name = @Workflow_Type_Name AND Workflow_Name = @Workflow_Name AND WF_Notification_Action = @WF_Notification_Action AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .WF40400 WHERE Workflow_Type_Name = @Workflow_Type_Name AND Workflow_Name = @Workflow_Name AND WF_Notification_Action = @WF_Notification_Action SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40400SD] TO [DYNGRP]
GO
