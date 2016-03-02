CREATE TABLE [dbo].[WF100003]
(
[Workflow_Step_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Version] [int] NOT NULL,
[WF_Step_Description] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[WFIncludeDocumentAttach] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__WF100003__DEX_RO__072AF939] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER dbo.zDT_WF100003U ON TLECO.dbo.WF100003 AFTER UPDATE AS /* 14.00.0084.000 */ set nocount on BEGIN UPDATE TLECO.dbo.WF100003 SET DEX_ROW_TS = GETUTCDATE() FROM TLECO.dbo.WF100003, inserted WHERE WF100003.Workflow_Step_Name = inserted.Workflow_Step_Name AND WF100003.Workflow_Name = inserted.Workflow_Name AND WF100003.Workflow_Version = inserted.Workflow_Version END set nocount off 
GO
ALTER TABLE [dbo].[WF100003] ADD CONSTRAINT [PKWF100003] PRIMARY KEY NONCLUSTERED  ([Workflow_Step_Name], [Workflow_Name], [Workflow_Version]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3WF100003] ON [dbo].[WF100003] ([Workflow_Name], [Workflow_Version], [WF_Step_Predecessor], [Workflow_Step_Sequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WF100003] ON [dbo].[WF100003] ([Workflow_Name], [Workflow_Version], [Workflow_Step_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100003].[Workflow_Step_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100003].[Workflow_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[Workflow_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100003].[WF_Step_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[Workflow_Step_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[Workflow_Step_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[Workflow_Step_Order]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[Workflow_Step_Condition]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100003].[Workflow_Step_Conditions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100003].[WF_Step_Predecessor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100003].[Workflow_Step_Assign_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100003].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[Workflow_Step_Send_Email]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[Workflow_Step_Time_Limit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[WF_Step_Time_Limit_UofM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[WF_Step_Completion_Polic]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[WF_Apply_WF_Calendar]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[WF100003].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100003].[WFIncludeDocumentAttach]'
GO
GRANT SELECT ON  [dbo].[WF100003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF100003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF100003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF100003] TO [DYNGRP]
GO
