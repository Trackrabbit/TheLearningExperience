CREATE TABLE [dbo].[SY01451]
(
[DBNAME] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StorageType] [smallint] NOT NULL,
[AzureStorageAccName] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AzureURL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Usecompression] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01451] ADD CONSTRAINT [PKSY01451] PRIMARY KEY CLUSTERED  ([DBNAME], [StorageType]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01451].[DBNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01451].[StorageType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01451].[AzureStorageAccName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01451].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01451].[AzureURL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01451].[Usecompression]'
GO
GRANT SELECT ON  [dbo].[SY01451] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01451] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01451] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01451] TO [DYNGRP]
GO
