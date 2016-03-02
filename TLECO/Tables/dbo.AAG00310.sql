CREATE TABLE [dbo].[AAG00310]
(
[aaMLQueryID] [int] NOT NULL,
[aaMLQuery] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaMLQueryDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaLevelTimeSpread] [smallint] NOT NULL,
[aaLevelCodeSpread] [smallint] NOT NULL,
[aaCodeSpreadCol] [smallint] NOT NULL,
[aaInclBSAccts] [tinyint] NOT NULL,
[aaInclPLAccts] [tinyint] NOT NULL,
[aaInclUnitAccts] [tinyint] NOT NULL,
[aaMatchType] [smallint] NOT NULL,
[aaCallMacro] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00310] ADD CONSTRAINT [PKAAG00310] PRIMARY KEY CLUSTERED  ([aaMLQueryID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00310] ON [dbo].[AAG00310] ([aaMLQuery]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00310] ON [dbo].[AAG00310] ([aaMLQueryDescr], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00310].[aaMLQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00310].[aaMLQuery]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00310].[aaMLQueryDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00310].[aaLevelTimeSpread]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00310].[aaLevelCodeSpread]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00310].[aaCodeSpreadCol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00310].[aaInclBSAccts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00310].[aaInclPLAccts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00310].[aaInclUnitAccts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00310].[aaMatchType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00310].[aaCallMacro]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00310].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00310] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00310] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00310] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00310] TO [DYNGRP]
GO
