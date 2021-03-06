CREATE TABLE [dbo].[IV10201]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXLOCTN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[RCTSEQNM] [int] NOT NULL,
[ORIGINDOCTYPE] [smallint] NOT NULL,
[ORIGINDOCID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[QTYSOLD] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[IVIVINDX] [int] NOT NULL,
[IVIVOFIX] [int] NOT NULL,
[SRCRCTSEQNM] [int] NOT NULL,
[TRXREFERENCE] [smallint] NOT NULL,
[PCHSRCTY] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10201] ADD CONSTRAINT [CK__IV10201__DOCDATE__39AD8A7F] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[IV10201] ADD CONSTRAINT [PKIV10201] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [TRXLOCTN], [QTYTYPE], [DOCDATE], [RCTSEQNM], [SRCRCTSEQNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5IV10201] ON [dbo].[IV10201] ([ITEMNMBR], [DOCDATE], [RCTSEQNM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV10201] ON [dbo].[IV10201] ([ITEMNMBR], [RCTSEQNM], [PCHSRCTY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV10201] ON [dbo].[IV10201] ([ITEMNMBR], [SRCRCTSEQNM], [PCHSRCTY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10201].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10201].[TRXLOCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10201].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[RCTSEQNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[ORIGINDOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10201].[ORIGINDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10201].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10201].[QTYSOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10201].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[IVIVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[IVIVOFIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[SRCRCTSEQNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[TRXREFERENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10201].[PCHSRCTY]'
GO
GRANT SELECT ON  [dbo].[IV10201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10201] TO [DYNGRP]
GO
