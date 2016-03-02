CREATE TABLE [dbo].[WFI10003]
(
[WorkflowStepInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Step_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Version] [int] NOT NULL,
[WF_Step_Description] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Step_Status] [smallint] NOT NULL,
[Workflow_Step_Sequence] [int] NOT NULL,
[Workflow_Step_Type] [smallint] NOT NULL,
[Workflow_Step_Order] [smallint] NOT NULL,
[Workflow_Step_Condition] [smallint] NOT NULL,
[Workflow_Step_Conditions] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WF_Step_Predecessor] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Step_Assign_To] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Step_Send_Email] [tinyint] NOT NULL,
[Workflow_Step_Time_Limit] [smallint] NOT NULL,
[WF_Step_Time_Limit_UofM] [smallint] NOT NULL,
[WF_Step_Completion_Polic] [smallint] NOT NULL,
[WF_Apply_WF_Calendar] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__WFI10003__DEX_RO__0C691018] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WFI10003] ADD CONSTRAINT [PKWFI10003] PRIMARY KEY NONCLUSTERED  ([WorkflowStepInstanceID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3WFI10003] ON [dbo].[WFI10003] ([Workflow_Name], [Workflow_Version], [Workflow_Step_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4WFI10003] ON [dbo].[WFI10003] ([Workflow_Name], [Workflow_Version], [Workflow_Step_Name], [Workflow_Step_Status], [Workflow_Step_Sequence], [Workflow_Step_Type], [Workflow_Step_Order], [WF_Step_Predecessor], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WFI10003] ON [dbo].[WFI10003] ([WorkflowInstanceID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[WorkflowStepInstanceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[Workflow_Step_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[WorkflowInstanceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[Workflow_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[Workflow_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[WF_Step_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[Workflow_Step_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[Workflow_Step_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[Workflow_Step_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[Workflow_Step_Order]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[Workflow_Step_Condition]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[Workflow_Step_Conditions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[WF_Step_Predecessor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[Workflow_Step_Assign_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10003].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[Workflow_Step_Send_Email]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[Workflow_Step_Time_Limit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[WF_Step_Time_Limit_UofM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[WF_Step_Completion_Polic]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10003].[WF_Apply_WF_Calendar]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[WFI10003].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[WFI10003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WFI10003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WFI10003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WFI10003] TO [DYNGRP]
GO
