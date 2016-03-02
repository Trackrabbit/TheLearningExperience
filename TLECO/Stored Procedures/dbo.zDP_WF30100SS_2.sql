SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WF30100SS_2] (@Workflow_Name char(51), @Workflow_Step_Name char(51), @Workflow_Action smallint, @Workflow_History_User char(85), @Workflow_Due_Date datetime, @Workflow_Due_Time datetime, @Workflow_Completion_Date datetime, @Workflow_Completion_Time datetime, @Milliseconds smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  WorkflowInstanceID, WorkflowStepInstanceID, Workflow_History_User, Workflow_Name, Workflow_Step_Name, Workflow_Step_Assign_To, Workflow_Action, Workflow_Due_Date, Workflow_Due_Time, Workflow_Completion_Date, Workflow_Completion_Time, Milliseconds, DEX_ROW_ID, Workflow_Comments FROM .WF30100 WHERE Workflow_Name = @Workflow_Name AND Workflow_Step_Name = @Workflow_Step_Name AND Workflow_Action = @Workflow_Action AND Workflow_History_User = @Workflow_History_User AND Workflow_Due_Date = @Workflow_Due_Date AND Workflow_Due_Time = @Workflow_Due_Time AND Workflow_Completion_Date = @Workflow_Completion_Date AND Workflow_Completion_Time = @Workflow_Completion_Time AND Milliseconds = @Milliseconds ORDER BY Workflow_Name ASC, Workflow_Step_Name ASC, Workflow_Action ASC, Workflow_History_User ASC, Workflow_Due_Date ASC, Workflow_Due_Time ASC, Workflow_Completion_Date ASC, Workflow_Completion_Time ASC, Milliseconds ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WF30100SS_2] TO [DYNGRP]
GO
