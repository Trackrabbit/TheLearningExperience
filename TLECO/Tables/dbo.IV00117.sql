CREATE TABLE [dbo].[IV00117]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [smallint] NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINSTOCKQTY] [numeric] (19, 5) NOT NULL,
[MAXSTOCKQTY] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00117] ADD CONSTRAINT [PKIV00117] PRIMARY KEY CLUSTERED  ([ITEMNMBR], [LOCNCODE], [Priority], [BIN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV00117] ON [dbo].[IV00117] ([ITEMNMBR], [LOCNCODE], [BIN], [Priority]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00117].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00117].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00117].[Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00117].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00117].[MINSTOCKQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00117].[MAXSTOCKQTY]'
GO
GRANT SELECT ON  [dbo].[IV00117] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00117] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00117] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00117] TO [DYNGRP]
GO