CREATE TABLE [dbo].[WFI10002]
(
[WorkflowInstanceID] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WfBusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Version] [int] NOT NULL,
[Workflow_Description] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FormID] [smallint] NOT NULL,
[DICTID] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[WF_SendNotificatications] [tinyint] NOT NULL,
[Workflow_Manually_Delega] [tinyint] NOT NULL,
[Workflow_Originator] [char] (238) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WF_AllowOrigApprover] [tinyint] NOT NULL,
[Workflow_Require_One_App] [tinyint] NOT NULL,
[WF_Use_Alt_Final_Approv] [tinyint] NOT NULL,
[WF_Alt_FinalApprover] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WF_Overdue_Task_Action] [smallint] NOT NULL,
[Workflow_Delegate_To] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Document_Drill_Down] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__WFI10002__DEX_RO__3FB3A9F4] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[Workflow_Where_Clause] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WFI10002] ADD CONSTRAINT [PKWFI10002] PRIMARY KEY NONCLUSTERED  ([WorkflowInstanceID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WFI10002] ON [dbo].[WFI10002] ([Workflow_Name], [WfBusObjKey]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3WFI10002] ON [dbo].[WFI10002] ([Workflow_Type_Name], [WfBusObjKey], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[WorkflowInstanceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[Workflow_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[WfBusObjKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[Workflow_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[Workflow_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[FormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[WF_SendNotificatications]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[Workflow_Manually_Delega]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[Workflow_Originator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[WF_AllowOrigApprover]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[Workflow_Require_One_App]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[WF_Use_Alt_Final_Approv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[WF_Alt_FinalApprover]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WFI10002].[WF_Overdue_Task_Action]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[Workflow_Delegate_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[TBLPHYSNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[Document_Drill_Down]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[WFI10002].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WFI10002].[BusObjKey]'
GO
GRANT SELECT ON  [dbo].[WFI10002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WFI10002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WFI10002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WFI10002] TO [DYNGRP]
GO
