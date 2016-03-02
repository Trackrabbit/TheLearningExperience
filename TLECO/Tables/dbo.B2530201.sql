CREATE TABLE [dbo].[B2530201]
(
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
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KEYFIELD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APFVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APFRDCTY] [smallint] NOT NULL,
[APTODCTY] [smallint] NOT NULL,
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
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Outstanding_Amount] [numeric] (19, 5) NOT NULL,
[Net_Paid_Amount] [numeric] (19, 5) NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[Selected_To_Print] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2530201] ADD CONSTRAINT [CK__B2530201__DISCDA__484AB86D] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2530201] ADD CONSTRAINT [CK__B2530201__DOCDAT__46626FFB] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2530201] ADD CONSTRAINT [CK__B2530201__DocDue__47569434] CHECK ((datepart(hour,[DocDueDate])=(0) AND datepart(minute,[DocDueDate])=(0) AND datepart(second,[DocDueDate])=(0) AND datepart(millisecond,[DocDueDate])=(0)))
GO
ALTER TABLE [dbo].[B2530201] ADD CONSTRAINT [PKB2530201] PRIMARY KEY NONCLUSTERED  ([PMNTNMBR], [KEYFIELD], [APTVCHNM], [APTODCTY], [APFVCHNM], [APFRDCTY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[DiscTknTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[NetCkAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[PdTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[NegTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[CrdDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[TotDocAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[WrOffTot]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[CrdtDesc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530201].[PrtOnStb]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[KEYFIELD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[APFVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530201].[APFRDCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530201].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530201].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[AMNTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530201].[DocDueDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530201].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[Outstanding_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530201].[Net_Paid_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530201].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530201].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530201].[Selected_To_Print]'
GO
GRANT SELECT ON  [dbo].[B2530201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2530201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2530201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2530201] TO [DYNGRP]
GO
