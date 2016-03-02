CREATE TABLE [dbo].[PM10801]
(
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[DiscTknTot] [numeric] (19, 5) NOT NULL,
[NetCkAmt] [numeric] (19, 5) NOT NULL,
[PdTot] [numeric] (19, 5) NOT NULL,
[NegTot] [numeric] (19, 5) NOT NULL,
[CrdDocAmt] [numeric] (19, 5) NOT NULL,
[TotDocAmt] [numeric] (19, 5) NOT NULL,
[WrOffTot] [numeric] (19, 5) NOT NULL,
[CrdtDesc] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDSCRN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PrtOnStb] [tinyint] NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[AMNTPAID] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DocDueDate] [datetime] NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[APFVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APFRDCTY] [smallint] NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Outstanding_Amount] [numeric] (19, 5) NOT NULL,
[Net_Paid_Amount] [numeric] (19, 5) NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM10801] ADD CONSTRAINT [CK__PM10801__DISCDAT__5A6F5FCC] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10801] ADD CONSTRAINT [CK__PM10801__DOCDATE__5B638405] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10801] ADD CONSTRAINT [CK__PM10801__DocDueD__5C57A83E] CHECK ((datepart(hour,[DocDueDate])=(0) AND datepart(minute,[DocDueDate])=(0) AND datepart(second,[DocDueDate])=(0) AND datepart(millisecond,[DocDueDate])=(0)))
GO
ALTER TABLE [dbo].[PM10801] ADD CONSTRAINT [PKPM10801] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1PM10801] ON [dbo].[PM10801] ([PMNTNMBR], [SEQNUMBR], [DSTSQNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10801].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10801].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[DiscTknTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[NetCkAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[PdTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[NegTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[CrdDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[TotDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[WrOffTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[CrdtDesc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10801].[PrtOnStb]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10801].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[AMNTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10801].[DocDueDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10801].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[APFVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10801].[APFRDCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10801].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[Outstanding_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10801].[Net_Paid_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10801].[PONUMBER]'
GO
GRANT SELECT ON  [dbo].[PM10801] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM10801] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM10801] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM10801] TO [DYNGRP]
GO
