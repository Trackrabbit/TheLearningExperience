CREATE TABLE [dbo].[SY_SQL_Options]
(
[DATASCNM] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTRLLOGN] [tinyint] NOT NULL,
[CTRLUSER] [tinyint] NOT NULL,
[TRUNCLOG] [tinyint] NOT NULL,
[TRUNDATA] [tinyint] NOT NULL,
[SQLSPAR1] [smallint] NOT NULL,
[SQLSPAR2] [smallint] NOT NULL,
[SQLSPAR3] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY_SQL_Options] ADD CONSTRAINT [PKSY_SQL_Options] PRIMARY KEY NONCLUSTERED  ([DATASCNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY_SQL_Options].[DATASCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY_SQL_Options].[CTRLLOGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY_SQL_Options].[CTRLUSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY_SQL_Options].[TRUNCLOG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY_SQL_Options].[TRUNDATA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY_SQL_Options].[SQLSPAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY_SQL_Options].[SQLSPAR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY_SQL_Options].[SQLSPAR3]'
GO
GRANT SELECT ON  [dbo].[SY_SQL_Options] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY_SQL_Options] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY_SQL_Options] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY_SQL_Options] TO [DYNGRP]
GO
