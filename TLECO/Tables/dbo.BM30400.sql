CREATE TABLE [dbo].[BM30400]
(
[TRX_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Component_ID] [int] NOT NULL,
[SLTYPE] [smallint] NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[SERLTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLTQTY] [numeric] (19, 5) NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[DATERECD] [datetime] NOT NULL,
[DTSEQNUM] [numeric] (19, 5) NOT NULL,
[PARSLSEQN] [int] NOT NULL,
[Parent_Component_ID] [int] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BM30400] ADD CONSTRAINT [CK__BM30400__DATEREC__778AC167] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[BM30400] ADD CONSTRAINT [CK__BM30400__EXPNDAT__787EE5A0] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[BM30400] ADD CONSTRAINT [CK__BM30400__MFGDATE__797309D9] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[BM30400] ADD CONSTRAINT [PKBM30400] PRIMARY KEY NONCLUSTERED  ([TRX_ID], [Component_ID], [SLTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BM30400] ON [dbo].[BM30400] ([ITMTRKOP], [ITEMNMBR], [SERLTNUM], [TRX_ID], [Component_ID], [SLTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4BM30400] ON [dbo].[BM30400] ([SERLTNUM], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BM30400] ON [dbo].[BM30400] ([TRX_ID], [Parent_Component_ID], [PARSLSEQN], [Component_ID], [SLTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30400].[TRX_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30400].[Component_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30400].[SLTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30400].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30400].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30400].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30400].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30400].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30400].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30400].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30400].[PARSLSEQN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30400].[Parent_Component_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM30400].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30400].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM30400].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM30400].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30400].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM30400].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[BM30400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM30400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM30400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM30400] TO [DYNGRP]
GO
