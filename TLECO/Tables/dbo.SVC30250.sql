CREATE TABLE [dbo].[SVC30250]
(
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
[EQUIPID] [int] NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30250] ADD CONSTRAINT [CK__SVC30250__DATERE__75C33FDD] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[SVC30250] ADD CONSTRAINT [CK__SVC30250__EXPNDA__76B76416] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30250] ADD CONSTRAINT [CK__SVC30250__MFGDAT__77AB884F] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30250] ADD CONSTRAINT [PKSVC30250] PRIMARY KEY CLUSTERED  ([SRVRECTYPE], [CALLNBR], [EQPLINE], [LINITMTYP], [CMPNTSEQ], [LNITMSEQ], [QTYTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30250] ON [dbo].[SVC30250] ([POSTED], [ITEMNMBR], [SERLTNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30250].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30250].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30250].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30250].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30250].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30250].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30250].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30250].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30250].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[OVRSERLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30250].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30250].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30250].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30250].[CMPNTSEQ]'
GO
GRANT SELECT ON  [dbo].[SVC30250] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30250] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30250] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30250] TO [DYNGRP]
GO
