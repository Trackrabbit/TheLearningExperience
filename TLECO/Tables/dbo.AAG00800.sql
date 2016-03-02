CREATE TABLE [dbo].[AAG00800]
(
[aaAliasID] [int] NOT NULL,
[aaAlias] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaDescription] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaShortDescription] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaInactive] [tinyint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00800] ADD CONSTRAINT [CK__AAG00800__MODIFD__6E0D0F7C] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[AAG00800] ADD CONSTRAINT [PKAAG00800] PRIMARY KEY CLUSTERED  ([aaAliasID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00800] ON [dbo].[AAG00800] ([aaAlias]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00800] ON [dbo].[AAG00800] ([aaDescription], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00800].[aaAliasID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00800].[aaAlias]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00800].[aaDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00800].[aaShortDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00800].[aaInactive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00800].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00800].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00800].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00800] TO [DYNGRP]
GO
