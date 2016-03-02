CREATE TABLE [dbo].[SY04907]
(
[EmailSeriesID] [smallint] NOT NULL,
[EmailDocumentID] [smallint] NOT NULL,
[Field_DictID] [smallint] NOT NULL,
[FIELDNAM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AdditionalFields] [tinyint] NOT NULL,
[HistoryTable] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OpenTable] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkTable] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HistOpenColumn] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkColumn] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Condition] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04907] ADD CONSTRAINT [PKSY04907] PRIMARY KEY CLUSTERED  ([EmailSeriesID], [EmailDocumentID], [Field_DictID], [FIELDNAM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04907] ON [dbo].[SY04907] ([EmailSeriesID], [EmailDocumentID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04907].[EmailSeriesID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04907].[EmailDocumentID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04907].[Field_DictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04907].[FIELDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04907].[AdditionalFields]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04907].[HistoryTable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04907].[OpenTable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04907].[WorkTable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04907].[HistOpenColumn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04907].[WorkColumn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04907].[Condition]'
GO
GRANT SELECT ON  [dbo].[SY04907] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04907] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04907] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04907] TO [DYNGRP]
GO
