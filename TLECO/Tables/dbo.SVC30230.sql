CREATE TABLE [dbo].[SVC30230]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[SVC_Distribution_Type] [smallint] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30230] ADD CONSTRAINT [CK__SVC30230__POSTED__6C39D5A3] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC30230] ADD CONSTRAINT [PKSVC30230] PRIMARY KEY NONCLUSTERED  ([SRVRECTYPE], [CALLNBR], [SEQNUMBR], [SVC_Distribution_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30230] ON [dbo].[SVC30230] ([SRVRECTYPE], [CALLNBR], [POSTED], [SEQNUMBR], [SVC_Distribution_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC30230] ON [dbo].[SVC30230] ([SRVRECTYPE], [CALLNBR], [POSTED], [SVC_Distribution_Type], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30230].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30230].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30230].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30230].[SVC_Distribution_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30230].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30230].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30230].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30230].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30230].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30230].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30230].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30230].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30230].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30230].[POSTEDDT]'
GO
GRANT SELECT ON  [dbo].[SVC30230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30230] TO [DYNGRP]
GO
