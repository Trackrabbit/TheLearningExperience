CREATE TABLE [dbo].[SVC05630]
(
[RTV_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Line] [numeric] (19, 5) NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
ALTER TABLE [dbo].[SVC05630] ADD CONSTRAINT [CK__SVC05630__POSTED__351EAAE3] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC05630] ADD CONSTRAINT [PKSVC05630] PRIMARY KEY NONCLUSTERED  ([RTV_Number], [RTV_Line], [LINITMTYP], [SEQNUMBR], [SVC_Distribution_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC05630] ON [dbo].[SVC05630] ([RTV_Number], [POSTED], [SVC_Distribution_Type], [ACTINDX], [RTV_Line], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC05630] ON [dbo].[SVC05630] ([RTV_Number], [RTV_Line], [LINITMTYP], [POSTED], [SEQNUMBR], [SVC_Distribution_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC05630] ON [dbo].[SVC05630] ([RTV_Number], [RTV_Line], [POSTED], [LINITMTYP], [SEQNUMBR], [SVC_Distribution_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05630].[RTV_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05630].[RTV_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05630].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05630].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05630].[SVC_Distribution_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05630].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05630].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05630].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05630].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05630].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05630].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05630].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05630].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05630].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05630].[POSTEDDT]'
GO
GRANT SELECT ON  [dbo].[SVC05630] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05630] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05630] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05630] TO [DYNGRP]
GO
