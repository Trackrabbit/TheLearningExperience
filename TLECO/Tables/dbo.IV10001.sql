CREATE TABLE [dbo].[IV10001]
(
[IVDOCNBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVDOCTYP] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYBSUOM] [numeric] (19, 5) NOT NULL,
[TRXQTY] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[TRXLOCTN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNSTLOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRFQTYTY] [smallint] NOT NULL,
[TRTQTYTY] [smallint] NOT NULL,
[IVIVINDX] [int] NOT NULL,
[IVIVOFIX] [int] NOT NULL,
[IVWLNMSG] [binary] (4) NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[USAGETYPE] [smallint] NOT NULL,
[Reason_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10001] ADD CONSTRAINT [PKIV10001] PRIMARY KEY NONCLUSTERED  ([IVDOCTYP], [IVDOCNBR], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV10001] ON [dbo].[IV10001] ([ITEMNMBR], [TRXLOCTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10001].[IVDOCNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[IVDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10001].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10001].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10001].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10001].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10001].[TRXQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10001].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10001].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10001].[TRXLOCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10001].[TRNSTLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[TRFQTYTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[TRTQTYTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[IVIVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[IVIVOFIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[IVWLNMSG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10001].[USAGETYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10001].[Reason_Code]'
GO
GRANT SELECT ON  [dbo].[IV10001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10001] TO [DYNGRP]
GO
