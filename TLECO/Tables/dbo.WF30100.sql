CREATE TABLE [dbo].[WF30100]
(
[WorkflowInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowStepInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_History_User] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Step_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Step_Assign_To] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Action] [smallint] NOT NULL,
[Workflow_Due_Date] [datetime] NOT NULL,
[Workflow_Due_Time] [datetime] NOT NULL,
[Workflow_Completion_Date] [datetime] NOT NULL,
[Workflow_Completion_Time] [datetime] NOT NULL,
[Milliseconds] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[Workflow_Comments] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF30100] ADD CONSTRAINT [CK__WF30100__Workflo__7F69DBE0] CHECK ((datepart(day,[Workflow_Completion_Time])=(1) AND datepart(month,[Workflow_Completion_Time])=(1) AND datepart(year,[Workflow_Completion_Time])=(1900)))
GO
ALTER TABLE [dbo].[WF30100] ADD CONSTRAINT [CK__WF30100__Workflo__7D81936E] CHECK ((datepart(day,[Workflow_Due_Time])=(1) AND datepart(month,[Workflow_Due_Time])=(1) AND datepart(year,[Workflow_Due_Time])=(1900)))
GO
ALTER TABLE [dbo].[WF30100] ADD CONSTRAINT [CK__WF30100__Workflo__7E75B7A7] CHECK ((datepart(hour,[Workflow_Completion_Date])=(0) AND datepart(minute,[Workflow_Completion_Date])=(0) AND datepart(second,[Workflow_Completion_Date])=(0) AND datepart(millisecond,[Workflow_Completion_Date])=(0)))
GO
ALTER TABLE [dbo].[WF30100] ADD CONSTRAINT [CK__WF30100__Workflo__7C8D6F35] CHECK ((datepart(hour,[Workflow_Due_Date])=(0) AND datepart(minute,[Workflow_Due_Date])=(0) AND datepart(second,[Workflow_Due_Date])=(0) AND datepart(millisecond,[Workflow_Due_Date])=(0)))
GO
ALTER TABLE [dbo].[WF30100] ADD CONSTRAINT [PKWF30100] PRIMARY KEY NONCLUSTERED  ([WorkflowInstanceID], [WorkflowStepInstanceID], [Workflow_History_User], [Workflow_Completion_Date], [Workflow_Completion_Time], [Milliseconds]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WF30100] ON [dbo].[WF30100] ([Workflow_Name], [Workflow_Step_Name], [Workflow_Action], [Workflow_History_User], [Workflow_Due_Date], [Workflow_Due_Time], [Workflow_Completion_Date], [Workflow_Completion_Time], [Milliseconds], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF30100].[WorkflowInstanceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF30100].[WorkflowStepInstanceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF30100].[Workflow_History_User]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF30100].[Workflow_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF30100].[Workflow_Step_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF30100].[Workflow_Step_Assign_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF30100].[Workflow_Action]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF30100].[Workflow_Due_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF30100].[Workflow_Due_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF30100].[Workflow_Completion_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF30100].[Workflow_Completion_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF30100].[Milliseconds]'
GO
GRANT SELECT ON  [dbo].[WF30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF30100] TO [DYNGRP]
GO
