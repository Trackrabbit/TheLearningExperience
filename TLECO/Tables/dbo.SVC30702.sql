CREATE TABLE [dbo].[SVC30702]
(
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSLINESEQ] [int] NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQPLINE] [int] NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[SERLTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLTQTY] [numeric] (19, 5) NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[DATERECD] [datetime] NOT NULL,
[DTSEQNUM] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[OVRSERLT] [smallint] NOT NULL,
[STATUS] [smallint] NOT NULL,
[FROMBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TOBIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30702] ADD CONSTRAINT [CK__SVC30702__DATERE__03A74AE0] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[SVC30702] ADD CONSTRAINT [CK__SVC30702__EXPNDA__049B6F19] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30702] ADD CONSTRAINT [CK__SVC30702__MFGDAT__058F9352] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30702] ADD CONSTRAINT [PKSVC30702] PRIMARY KEY NONCLUSTERED  ([ORDDOCID], [TRANSLINESEQ], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30702] ON [dbo].[SVC30702] ([POSTED], [ITEMNMBR], [SERLTNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30702].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[TRANSLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30702].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30702].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30702].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30702].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30702].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30702].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30702].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30702].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30702].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[OVRSERLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30702].[STATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30702].[FROMBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30702].[TOBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30702].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30702].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[SVC30702] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30702] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30702] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30702] TO [DYNGRP]
GO
