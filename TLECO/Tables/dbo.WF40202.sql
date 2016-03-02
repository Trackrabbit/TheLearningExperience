CREATE TABLE [dbo].[WF40202]
(
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email_Message_Type] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Ord_Line] [int] NOT NULL,
[WF_Template_Field_Type] [smallint] NOT NULL,
[TableSeries] [smallint] NOT NULL,
[TableDictID] [smallint] NOT NULL,
[RSRCID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TablePhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldPhysicalName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldName] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FieldDataType] [smallint] NOT NULL,
[TableRelationship] [smallint] NOT NULL,
[AdditionalFields] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF40202] ADD CONSTRAINT [PKWF40202] PRIMARY KEY NONCLUSTERED  ([Workflow_Type_Name], [Email_Message_Type], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WF40202] ON [dbo].[WF40202] ([Workflow_Type_Name], [Email_Message_Type], [FieldName]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3WF40202] ON [dbo].[WF40202] ([Workflow_Type_Name], [Email_Message_Type], [Ord_Line], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4WF40202] ON [dbo].[WF40202] ([Workflow_Type_Name], [Email_Message_Type], [TableRelationship], [FieldName]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40202].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[Email_Message_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[Ord_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[WF_Template_Field_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[TableSeries]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[TableDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40202].[RSRCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40202].[TablePhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40202].[FieldPhysicalName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40202].[FieldName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[FieldDataType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[TableRelationship]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40202].[AdditionalFields]'
GO
GRANT SELECT ON  [dbo].[WF40202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF40202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF40202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF40202] TO [DYNGRP]
GO
