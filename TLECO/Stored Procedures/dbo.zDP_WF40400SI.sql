SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40400SI] (@Workflow_Type_Name char(51), @Workflow_Name char(51), @WF_Notification_Action smallint, @WF_Notification_Enabled tinyint, @EmailMessageID char(25), @Workflow_Notification_CC char(37), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF40400 (Workflow_Type_Name, Workflow_Name, WF_Notification_Action, WF_Notification_Enabled, EmailMessageID, Workflow_Notification_CC) VALUES ( @Workflow_Type_Name, @Workflow_Name, @WF_Notification_Action, @WF_Notification_Enabled, @EmailMessageID, @Workflow_Notification_CC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40400SI] TO [DYNGRP]
GO
