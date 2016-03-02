CREATE TABLE [dbo].[sySrsReports]
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
[MinSrsVersion] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsKpi] [tinyint] NOT NULL,
[IsIsv] [tinyint] NOT NULL,
[IsMultiCompany] [tinyint] NOT NULL,
[IsCRM] [tinyint] NOT NULL,
[IsConfigurationFile] [tinyint] NOT NULL,
[BinaryBlob] [varbinary] (max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[sySrsReports] ADD CONSTRAINT [PK_sySrsReports] PRIMARY KEY CLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [AK2_sySrsReports] ON [dbo].[sySrsReports] ([LanguageID], [ObjectType], [DictionaryID], [TableName], [IsIsv]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1_sySrsReports] ON [dbo].[sySrsReports] ([ObjectID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReports].[LanguageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReports].[DictionaryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReports].[ObjectType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[sySrsReports].[ObjectDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[sySrsReports].[FolderName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[sySrsReports].[DisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[sySrsReports].[CurrentVersion]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[sySrsReports].[MinSrsVersion]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReports].[IsKpi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReports].[IsIsv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReports].[IsMultiCompany]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReports].[IsCRM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReports].[IsConfigurationFile]'
GO
GRANT SELECT ON  [dbo].[sySrsReports] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[sySrsReports] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[sySrsReports] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[sySrsReports] TO [DYNGRP]
GO
