CREATE TABLE [dbo].[PT10000]
(
[PROJNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NONINVEN] [smallint] NOT NULL,
[ProjDistDocSource] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[Whom] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProjDistType] [smallint] NOT NULL,
[ProDistCategory] [smallint] NOT NULL,
[INCORDEC] [smallint] NOT NULL,
[DISTAMNT] [numeric] (19, 5) NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[BillableType] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[ProjDistBillStatus] [smallint] NOT NULL,
[PayCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYRATE] [numeric] (19, 5) NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PT10000] ADD CONSTRAINT [CK__PT10000__DOCDATE__4E5E8EA2] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PT10000] ADD CONSTRAINT [PKPT10000] PRIMARY KEY NONCLUSTERED  ([ProjDistDocSource], [DOCNUMBR], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7PT10000] ON [dbo].[PT10000] ([DOCNUMBR], [ProjDistDocSource], [DOCDATE], [Whom], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PT10000] ON [dbo].[PT10000] ([DOCNUMBR], [ProjDistDocSource], [PROJNAME], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6PT10000] ON [dbo].[PT10000] ([DOCNUMBR], [ProjDistDocSource], [Whom], [DOCDATE], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PT10000] ON [dbo].[PT10000] ([PROJNAME], [POSTED], [ProDistCategory], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PT10000] ON [dbo].[PT10000] ([PROJNAME], [POSTED], [ProjDistType], [DOCDATE], [DOCNUMBR], [ProjDistDocSource], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PT10000] ON [dbo].[PT10000] ([PROJNAME], [POSTED], [ProjDistType], [DOCDATE], [ProDistCategory], [DOCNUMBR], [ProjDistDocSource], [DSTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT10000].[PROJNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT10000].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT10000].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[ProjDistDocSource]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT10000].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PT10000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT10000].[Whom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[ProjDistType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[ProDistCategory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[INCORDEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT10000].[DISTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT10000].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[BillableType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT10000].[ProjDistBillStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT10000].[PayCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT10000].[PAYRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT10000].[SOPNUMBE]'
GO
GRANT SELECT ON  [dbo].[PT10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PT10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PT10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PT10000] TO [DYNGRP]
GO
