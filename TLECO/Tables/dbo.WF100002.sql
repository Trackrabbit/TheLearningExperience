CREATE TABLE [dbo].[WF100002]
(
[Workflow_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Version] [int] NOT NULL,
[Workflow_Description] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[WF_SendNotificatications] [tinyint] NOT NULL,
[Workflow_Manually_Delega] [tinyint] NOT NULL,
[WF_AllowOrigApprover] [tinyint] NOT NULL,
[Workflow_Require_One_App] [tinyint] NOT NULL,
[WF_Use_Alt_Final_Approv] [tinyint] NOT NULL,
[WF_Alt_FinalApprover] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WF_Overdue_Task_Action] [smallint] NOT NULL,
[Workflow_Delegate_To] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__WF100002__DEX_RO__265DEC45] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF100002] ADD CONSTRAINT [PKWF100002] PRIMARY KEY NONCLUSTERED  ([Workflow_Name], [Workflow_Version]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3WF100002] ON [dbo].[WF100002] ([ACTIVE], [Workflow_Type_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WF100002] ON [dbo].[WF100002] ([Workflow_Type_Name], [Workflow_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100002].[Workflow_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100002].[Workflow_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100002].[Workflow_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100002].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100002].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100002].[WF_SendNotificatications]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100002].[Workflow_Manually_Delega]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100002].[WF_AllowOrigApprover]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100002].[Workflow_Require_One_App]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100002].[WF_Use_Alt_Final_Approv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100002].[WF_Alt_FinalApprover]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100002].[WF_Overdue_Task_Action]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100002].[Workflow_Delegate_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[WF100002].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[WF100002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF100002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF100002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF100002] TO [DYNGRP]
GO
