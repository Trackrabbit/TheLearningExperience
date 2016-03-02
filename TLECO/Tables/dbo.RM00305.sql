CREATE TABLE [dbo].[RM00305]
(
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HISTTYPE] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[SMRYDATE] [datetime] NOT NULL,
[COSTAMNT] [numeric] (19, 5) NOT NULL,
[TTLCOMAM] [numeric] (19, 5) NOT NULL,
[COMSLTDT] [numeric] (19, 5) NOT NULL,
[NCOMAMNT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM00305] ADD CONSTRAINT [CK__RM00305__SMRYDAT__7D197D8B] CHECK ((datepart(hour,[SMRYDATE])=(0) AND datepart(minute,[SMRYDATE])=(0) AND datepart(second,[SMRYDATE])=(0) AND datepart(millisecond,[SMRYDATE])=(0)))
GO
ALTER TABLE [dbo].[RM00305] ADD CONSTRAINT [PKRM00305] PRIMARY KEY NONCLUSTERED  ([HISTTYPE], [SALSTERR], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM00305] ON [dbo].[RM00305] ([SALSTERR], [HISTTYPE], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00305].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00305].[HISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00305].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00305].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00305].[SMRYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00305].[COSTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00305].[TTLCOMAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00305].[COMSLTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00305].[NCOMAMNT]'
GO
GRANT SELECT ON  [dbo].[RM00305] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00305] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00305] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00305] TO [DYNGRP]
GO
