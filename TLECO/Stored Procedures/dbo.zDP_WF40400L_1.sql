SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40400L_1] (@Workflow_Type_Name_RS char(51), @Workflow_Name_RS char(51), @WF_Notification_Action_RS smallint, @Workflow_Type_Name_RE char(51), @Workflow_Name_RE char(51), @WF_Notification_Action_RE smallint) AS  set nocount on IF @Workflow_Type_Name_RS IS NULL BEGIN SELECT TOP 25  Workflow_Type_Name, Workflow_Name, WF_Notification_Action, WF_Notification_Enabled, EmailMessageID, Workflow_Notification_CC, DEX_ROW_ID FROM .WF40400 ORDER BY Workflow_Type_Name DESC, Workflow_Name DESC, WF_Notification_Action DESC END ELSE IF @Workflow_Type_Name_RS = @Workflow_Type_Name_RE BEGIN SELECT TOP 25  Workflow_Type_Name, Workflow_Name, WF_Notification_Action, WF_Notification_Enabled, EmailMessageID, Workflow_Notification_CC, DEX_ROW_ID FROM .WF40400 WHERE Workflow_Type_Name = @Workflow_Type_Name_RS AND Workflow_Name BETWEEN @Workflow_Name_RS AND @Workflow_Name_RE AND WF_Notification_Action BETWEEN @WF_Notification_Action_RS AND @WF_Notification_Action_RE ORDER BY Workflow_Type_Name DESC, Workflow_Name DESC, WF_Notification_Action DESC END ELSE BEGIN SELECT TOP 25  Workflow_Type_Name, Workflow_Name, WF_Notification_Action, WF_Notification_Enabled, EmailMessageID, Workflow_Notification_CC, DEX_ROW_ID FROM .WF40400 WHERE Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE AND Workflow_Name BETWEEN @Workflow_Name_RS AND @Workflow_Name_RE AND WF_Notification_Action BETWEEN @WF_Notification_Action_RS AND @WF_Notification_Action_RE ORDER BY Workflow_Type_Name DESC, Workflow_Name DESC, WF_Notification_Action DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40400L_1] TO [DYNGRP]
GO