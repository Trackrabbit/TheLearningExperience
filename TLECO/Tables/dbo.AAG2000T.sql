CREATE TABLE [dbo].[AAG2000T]
(
[VOIDED] [tinyint] NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG2000T] ADD CONSTRAINT [PKAAG2000T] PRIMARY KEY NONCLUSTERED  ([DSTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000T].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000T].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000T].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2000T].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2000T].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2000T].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2000T].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2000T].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2000T].[ORDBTAMT]'
GO
GRANT SELECT ON  [dbo].[AAG2000T] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG2000T] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG2000T] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG2000T] TO [DYNGRP]
GO
