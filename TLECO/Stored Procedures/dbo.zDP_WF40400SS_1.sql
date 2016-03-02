SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40400SS_1] (@Workflow_Type_Name char(51), @Workflow_Name char(51), @WF_Notification_Action smallint) AS  set nocount on SELECT TOP 1  Workflow_Type_Name, Workflow_Name, WF_Notification_Action, WF_Notification_Enabled, EmailMessageID, Workflow_Notification_CC, DEX_ROW_ID FROM .WF40400 WHERE Workflow_Type_Name = @Workflow_Type_Name AND Workflow_Name = @Workflow_Name AND WF_Notification_Action = @WF_Notification_Action ORDER BY Workflow_Type_Name ASC, Workflow_Name ASC, WF_Notification_Action ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40400SS_1] TO [DYNGRP]
GO
