CREATE TABLE [dbo].[WF100001]
(
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WF_Type_Description] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FormID] [smallint] NOT NULL,
[DICTID] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[Workflow_Class] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WINNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Managers] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldsListGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WfTypeBusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WfTypeHistBusObjKey] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DocAttachBusObjKeyFuncti] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DocumentDrillDownFunctio] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__WF100001__DEX_RO__0CC3D6FE] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER dbo.zDT_WF100001U ON TLECO.dbo.WF100001 AFTER UPDATE AS /* 14.00.0084.000 */ set nocount on BEGIN UPDATE TLECO.dbo.WF100001 SET DEX_ROW_TS = GETUTCDATE() FROM TLECO.dbo.WF100001, inserted WHERE WF100001.Workflow_Type_Name = inserted.Workflow_Type_Name END set nocount off 
GO
ALTER TABLE [dbo].[WF100001] ADD CONSTRAINT [PKWF100001] PRIMARY KEY NONCLUSTERED  ([Workflow_Type_Name]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3WF100001] ON [dbo].[WF100001] ([SERIES], [Workflow_Type_Name]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WF100001] ON [dbo].[WF100001] ([Workflow_Class], [Workflow_Type_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[WF_Type_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100001].[FormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100001].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF100001].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[Workflow_Class]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[WINNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[Workflow_Managers]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[FieldsListGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[WfTypeBusObjKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[WfTypeHistBusObjKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[WF100001].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[DocAttachBusObjKeyFuncti]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF100001].[DocumentDrillDownFunctio]'
GO
GRANT SELECT ON  [dbo].[WF100001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF100001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF100001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF100001] TO [DYNGRP]
GO
