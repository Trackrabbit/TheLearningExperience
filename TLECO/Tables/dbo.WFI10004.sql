CREATE TABLE [dbo].[WFI10004]
(
[WorkflowInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowStepInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowTaskAssignedTo] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Step_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Version] [int] NOT NULL,
[WF_Step_Description] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Action_Date] [datetime] NOT NULL,
[Workflow_Action_Time] [datetime] NOT NULL,
[Workflow_Due_Date] [datetime] NOT NULL,
[Workflow_Due_Time] [datetime] NOT NULL,
[Workflow_Step_Sequence] [int] NOT NULL,
[Workflow_Step_Type] [smallint] NOT NULL,
[Workflow_Step_Order] [smallint] NOT NULL,
[WF_Step_Predecessor] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WF_Step_Completion_Polic] [smallint] NOT NULL,
[Workflow_Task_Escalated] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__WFI10004__DEX_RO__2AED9738] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WFI10004] ADD CONSTRAINT [CK__WFI10004__Workfl__25060E70] CHECK ((datepart(day,[Workflow_Action_Time])=(1) AND datepart(month,[Workflow_Action_Time])=(1) AND datepart(year,[Workflow_Action_Time])=(1900)))
GO
ALTER TABLE [dbo].[WFI10004] ADD CONSTRAINT [CK__WFI10004__Workfl__26EE56E2] CHECK ((datepart(day,[Workflow_Due_Time])=(1) AND datepart(month,[Workflow_Due_Time])=(1) AND datepart(year,[Workflow_Due_Time])=(1900)))
GO
ALTER TABLE [dbo].[WFI10004] ADD CONSTRAINT [CK__WFI10004__Workfl__2411EA37] CHECK ((datepart(hour,[Workflow_Action_Date])=(0) AND datepart(minute,[Workflow_Action_Date])=(0) AND datepart(second,[Workflow_Action_Date])=(0) AND datepart(millisecond,[Workflow_Action_Date])=(0)))
GO
ALTER TABLE [dbo].[WFI10004] ADD CONSTRAINT [CK__WFI10004__Workfl__25FA32A9] CHECK ((datepart(hour,[Workflow_Due_Date])=(0) AND datepart(minute,[Workflow_Due_Date])=(0) AND datepart(second,[Workflow_Due_Date])=(0) AND datepart(millisecond,[Workflow_Due_Date])=(0)))
GO
ALTER TABLE [dbo].[WFI10004] ADD CONSTRAINT [PKWFI10004] PRIMARY KEY NONCLUSTERED  ([WorkflowInstanceID], [WorkflowStepInstanceID], [WorkflowTaskAssignedTo]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3WFI10004] ON [dbo].[WFI10004] ([Workflow_Name], [Workflow_Version], [Workflow_Step_Name], [WorkflowTaskAssignedTo], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WFI10004] ON [dbo].[WFI10004] ([WorkflowStepInstanceID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10004].[WorkflowInstanceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10004].[WorkflowStepInstanceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10004].[WorkflowTaskAssignedTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10004].[Workflow_Step_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10004].[Workflow_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10004].[Workflow_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10004].[WF_Step_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WFI10004].[Workflow_Action_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WFI10004].[Workflow_Action_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WFI10004].[Workflow_Due_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WFI10004].[Workflow_Due_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10004].[Workflow_Step_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10004].[Workflow_Step_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10004].[Workflow_Step_Order]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10004].[WF_Step_Predecessor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10004].[WF_Step_Completion_Polic]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10004].[Workflow_Task_Escalated]'
GO
GRANT SELECT ON  [dbo].[WFI10004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WFI10004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WFI10004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WFI10004] TO [DYNGRP]
GO
