CREATE TABLE [dbo].[RM00302]
(
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HISTTYPE] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[COSTAMNT] [numeric] (19, 5) NOT NULL,
[TTLCOMAM] [numeric] (19, 5) NOT NULL,
[COMSLTDT] [numeric] (19, 5) NOT NULL,
[NCOMAMNT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM00302] ADD CONSTRAINT [PKRM00302] PRIMARY KEY NONCLUSTERED  ([HISTTYPE], [SLPRSNID], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM00302] ON [dbo].[RM00302] ([SLPRSNID], [HISTTYPE], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00302].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00302].[HISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00302].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00302].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00302].[COSTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00302].[TTLCOMAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00302].[COMSLTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00302].[NCOMAMNT]'
GO
GRANT SELECT ON  [dbo].[RM00302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00302] TO [DYNGRP]
GO
