CREATE TABLE [dbo].[AAG00315]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[aaYearFld] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[From_Period] [smallint] NOT NULL,
[To_Period] [smallint] NOT NULL,
[aaPerFld] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaPerStr] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaEmptyCodeStr] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTimeSpreadUsed] [tinyint] NOT NULL,
[aaCodeSpreadUsed] [tinyint] NOT NULL,
[aaCodeSpreadCol] [smallint] NOT NULL,
[THSSPRTR] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECSPRTR] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaNegSignLeft] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaNegSignRight] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTruncateTo] [smallint] NOT NULL,
[aaClearEmptyCells] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[aaSQLCreate] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSQLInsert] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSQLSelect] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSQLFrom] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSQLWhere] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSQLGroupBy] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSQLCols] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00315] ADD CONSTRAINT [PKAAG00315] PRIMARY KEY CLUSTERED  ([USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00315].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[aaYearFld]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00315].[From_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00315].[To_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[aaPerFld]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[aaPerStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[aaEmptyCodeStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00315].[aaTimeSpreadUsed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00315].[aaCodeSpreadUsed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00315].[aaCodeSpreadCol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[THSSPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[DECSPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[aaNegSignLeft]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00315].[aaNegSignRight]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00315].[aaTruncateTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00315].[aaClearEmptyCells]'
GO
GRANT SELECT ON  [dbo].[AAG00315] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00315] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00315] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00315] TO [DYNGRP]
GO
