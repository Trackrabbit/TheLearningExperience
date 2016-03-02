CREATE TABLE [dbo].[IV50300]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMTYPE] [smallint] NOT NULL,
[ABCCODE] [smallint] NOT NULL,
[SGGSTDABCCD] [smallint] NOT NULL,
[INCLUDEITEM] [tinyint] NOT NULL,
[QTYONHND] [numeric] (19, 5) NOT NULL,
[PRCNTOFTTL] [numeric] (19, 5) NOT NULL,
[CMLTVPRCNTOFTTL] [numeric] (19, 5) NOT NULL,
[CMLTVPRCNTOFITMS] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[RANKINGVALUE] [numeric] (19, 5) NOT NULL,
[SMMRYDPNDNTUSGQTY] [numeric] (19, 5) NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[UPDATED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV50300] ADD CONSTRAINT [PKIV50300] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV50300] ON [dbo].[IV50300] ([INCLUDEITEM], [ITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV50300] ON [dbo].[IV50300] ([RANKINGVALUE], [ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50300].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV50300].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50300].[ITEMTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50300].[ABCCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50300].[SGGSTDABCCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50300].[INCLUDEITEM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV50300].[QTYONHND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV50300].[PRCNTOFTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV50300].[CMLTVPRCNTOFTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV50300].[CMLTVPRCNTOFITMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV50300].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV50300].[RANKINGVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV50300].[SMMRYDPNDNTUSGQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50300].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50300].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV50300].[UPDATED]'
GO
GRANT SELECT ON  [dbo].[IV50300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV50300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV50300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV50300] TO [DYNGRP]
GO
