CREATE TABLE [dbo].[RM00104]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIODID] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[HISTTYPE] [smallint] NOT NULL,
[NUMOFINV] [int] NOT NULL,
[SMRYSALS] [numeric] (19, 5) NOT NULL,
[SMRYCRCD] [numeric] (19, 5) NOT NULL,
[SMRYCOST] [numeric] (19, 5) NOT NULL,
[SMRYWROF] [numeric] (19, 5) NOT NULL,
[SMRYDISC] [numeric] (19, 5) NOT NULL,
[SMRYRTNG] [numeric] (19, 5) NOT NULL,
[SMRYFCHR] [numeric] (19, 5) NOT NULL,
[SMRYWFCH] [numeric] (19, 5) NOT NULL,
[SMRYRTRN] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM00104] ADD CONSTRAINT [PKRM00104] PRIMARY KEY NONCLUSTERED  ([HISTTYPE], [CUSTNMBR], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00104].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00104].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00104].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00104].[HISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00104].[NUMOFINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYSALS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYCRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYWROF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYRTNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYFCHR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYWFCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00104].[SMRYRTRN]'
GO
GRANT SELECT ON  [dbo].[RM00104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00104] TO [DYNGRP]
GO
