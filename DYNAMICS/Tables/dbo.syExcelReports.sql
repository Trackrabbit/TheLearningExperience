CREATE TABLE [dbo].[syExcelReports]
(
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[ObjectID] [uniqueidentifier] NOT NULL,
[LanguageID] [smallint] NOT NULL,
[DictionaryID] [smallint] NOT NULL,
[ObjectType] [smallint] NOT NULL,
[ObjectDescription] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FolderName] [varchar] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DisplayName] [varchar] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TableName] [varchar] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CurrentVersion] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OdcType] [smallint] NOT NULL,
[IsIsv] [tinyint] NOT NULL,
[BinaryBlob] [varbinary] (max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[syExcelReports] ADD CONSTRAINT [PK_syExcelReports] PRIMARY KEY CLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [AK2_syExcelReports] ON [dbo].[syExcelReports] ([LanguageID], [ObjectType], [DictionaryID], [TableName], [IsIsv]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1_syExcelReports] ON [dbo].[syExcelReports] ([ObjectID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[syExcelReports].[LanguageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[syExcelReports].[DictionaryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[syExcelReports].[ObjectType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[syExcelReports].[ObjectDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[syExcelReports].[FolderName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[syExcelReports].[DisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[syExcelReports].[CurrentVersion]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[syExcelReports].[OdcType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[syExcelReports].[IsIsv]'
GO
GRANT SELECT ON  [dbo].[syExcelReports] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[syExcelReports] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[syExcelReports] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[syExcelReports] TO [DYNGRP]
GO
