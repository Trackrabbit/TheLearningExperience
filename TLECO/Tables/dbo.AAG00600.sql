CREATE TABLE [dbo].[AAG00600]
(
[aaTreeID] [int] NOT NULL,
[aaTree] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaLinkType] [smallint] NOT NULL,
[aaDimID] [int] NOT NULL,
[aaTreeDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTreeMain] [tinyint] NOT NULL,
[aaTreeInclAllRec] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00600] ADD CONSTRAINT [PKAAG00600] PRIMARY KEY CLUSTERED  ([aaTreeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00600] ON [dbo].[AAG00600] ([aaLinkType], [aaTree]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00600] ON [dbo].[AAG00600] ([aaTree]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AAG00600] ON [dbo].[AAG00600] ([aaTreeDescr], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00600].[aaTreeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00600].[aaTree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00600].[aaLinkType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00600].[aaDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00600].[aaTreeDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00600].[aaTreeMain]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00600].[aaTreeInclAllRec]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00600].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00600] TO [DYNGRP]
GO
