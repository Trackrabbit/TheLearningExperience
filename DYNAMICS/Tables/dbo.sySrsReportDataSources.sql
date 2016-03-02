CREATE TABLE [dbo].[sySrsReportDataSources]
(
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[ObjectID] [uniqueidentifier] NOT NULL,
[DataSourceType] [smallint] NOT NULL,
[DataSourceID] [varchar] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ModelID] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sySrsReportDataSources] ADD CONSTRAINT [PK_sySrsReportDataSources] PRIMARY KEY CLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [AK1_sySrsReportDataSources] ON [dbo].[sySrsReportDataSources] ([ObjectID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[sySrsReportDataSources].[DataSourceType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[sySrsReportDataSources].[DataSourceID]'
GO
GRANT SELECT ON  [dbo].[sySrsReportDataSources] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[sySrsReportDataSources] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[sySrsReportDataSources] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[sySrsReportDataSources] TO [DYNGRP]
GO
