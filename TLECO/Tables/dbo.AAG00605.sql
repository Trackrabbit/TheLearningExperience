CREATE TABLE [dbo].[AAG00605]
(
[aaTreeID] [int] NOT NULL,
[aaTree] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaLinkType] [smallint] NOT NULL,
[aaDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaDimID] [int] NOT NULL,
[aaTrxDim] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTreeDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTreeMain] [tinyint] NOT NULL,
[aaTreeInclAllRec] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00605] ADD CONSTRAINT [PKAAG00605] PRIMARY KEY NONCLUSTERED  ([aaTreeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00605] ON [dbo].[AAG00605] ([aaLinkType], [aaTree]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00605] ON [dbo].[AAG00605] ([aaTree]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AAG00605] ON [dbo].[AAG00605] ([aaTreeDescr], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00605].[aaTreeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00605].[aaTree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00605].[aaLinkType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00605].[aaDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00605].[aaDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00605].[aaTrxDim]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00605].[aaTreeDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00605].[aaTreeMain]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00605].[aaTreeInclAllRec]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00605].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00605] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00605] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00605] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00605] TO [DYNGRP]
GO
