CREATE TABLE [dbo].[SVC06131]
(
[WORECTYPE] [smallint] NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
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
[CMPNTSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06131] ADD CONSTRAINT [CK__SVC06131__POSTED__129488B5] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC06131] ADD CONSTRAINT [PKSVC06131] PRIMARY KEY NONCLUSTERED  ([WORECTYPE], [WORKORDNUM], [LINITMTYP], [LNITMSEQ], [CMPNTSEQ], [SEQNUMBR], [SVC_Distribution_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06131] ON [dbo].[SVC06131] ([WORECTYPE], [WORKORDNUM], [LINITMTYP], [LNITMSEQ], [CMPNTSEQ], [POSTED], [SEQNUMBR], [SVC_Distribution_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC06131] ON [dbo].[SVC06131] ([WORECTYPE], [WORKORDNUM], [LINITMTYP], [LNITMSEQ], [CMPNTSEQ], [POSTED], [SVC_Distribution_Type], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06131].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06131].[WORKORDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06131].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06131].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06131].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06131].[SVC_Distribution_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06131].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06131].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06131].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06131].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06131].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06131].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06131].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06131].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06131].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06131].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06131].[CMPNTSEQ]'
GO
GRANT SELECT ON  [dbo].[SVC06131] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06131] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06131] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06131] TO [DYNGRP]
GO
