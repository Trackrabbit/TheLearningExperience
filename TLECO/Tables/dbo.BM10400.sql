CREATE TABLE [dbo].[BM10400]
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
[OVRSERLT] [smallint] NOT NULL,
[PARSLSEQN] [int] NOT NULL,
[Parent_Component_ID] [int] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[Status] [smallint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BM10400] ADD CONSTRAINT [CK__BM10400__DATEREC__6477ECF3] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[BM10400] ADD CONSTRAINT [CK__BM10400__EXPNDAT__656C112C] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[BM10400] ADD CONSTRAINT [CK__BM10400__MFGDATE__66603565] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[BM10400] ADD CONSTRAINT [PKBM10400] PRIMARY KEY NONCLUSTERED  ([TRX_ID], [Component_ID], [SLTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BM10400] ON [dbo].[BM10400] ([ITEMNMBR], [SERLTNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4BM10400] ON [dbo].[BM10400] ([SERLTNUM], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3BM10400] ON [dbo].[BM10400] ([TRX_ID], [Parent_Component_ID], [PARSLSEQN], [Component_ID], [SLTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10400].[TRX_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[Component_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[SLTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10400].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM10400].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10400].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10400].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM10400].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[OVRSERLT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[PARSLSEQN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[Parent_Component_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10400].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BM10400].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BM10400].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10400].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BM10400].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10400].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BM10400].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[BM10400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BM10400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BM10400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BM10400] TO [DYNGRP]
GO
