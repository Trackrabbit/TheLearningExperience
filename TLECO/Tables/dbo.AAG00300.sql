CREATE TABLE [dbo].[AAG00300]
(
[aaDistrQueryID] [int] NOT NULL,
[aaDistrQuery] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaDistrQueryDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaInclBSAccts] [tinyint] NOT NULL,
[aaInclPLAccts] [tinyint] NOT NULL,
[aaInclUnitAccts] [tinyint] NOT NULL,
[aaCallMacro] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaMatchType] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00300] ADD CONSTRAINT [PKAAG00300] PRIMARY KEY CLUSTERED  ([aaDistrQueryID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00300] ON [dbo].[AAG00300] ([aaDistrQuery]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00300] ON [dbo].[AAG00300] ([aaDistrQueryDescr], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00300].[aaDistrQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00300].[aaDistrQuery]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00300].[aaDistrQueryDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00300].[aaInclBSAccts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00300].[aaInclPLAccts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00300].[aaInclUnitAccts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00300].[aaCallMacro]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00300].[aaMatchType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00300].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00300] TO [DYNGRP]
GO
