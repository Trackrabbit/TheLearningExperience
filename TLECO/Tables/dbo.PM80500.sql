CREATE TABLE [dbo].[PM80500]
(
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[APFRDCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[APTODCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEN99AMNT] [numeric] (19, 5) NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[APTODCDT] [datetime] NOT NULL,
[KEYSOURC] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORAPPAMT] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[ORWROFAM] [numeric] (19, 5) NOT NULL,
[ORDATKN] [numeric] (19, 5) NOT NULL,
[RLGANLOS] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM80500] ADD CONSTRAINT [CK__PM80500__APTODCD__74EE4BDE] CHECK ((datepart(hour,[APTODCDT])=(0) AND datepart(minute,[APTODCDT])=(0) AND datepart(second,[APTODCDT])=(0) AND datepart(millisecond,[APTODCDT])=(0)))
GO
ALTER TABLE [dbo].[PM80500] ADD CONSTRAINT [CK__PM80500__DOCDATE__75E27017] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM80500] ADD CONSTRAINT [CK__PM80500__POSTEDD__76D69450] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[PM80500] ADD CONSTRAINT [PKPM80500] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM80500] ON [dbo].[PM80500] ([TRXSORCE], [KEYSOURC], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM80500] ON [dbo].[PM80500] ([TRXSORCE], [VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1PM80500] ON [dbo].[PM80500] ([TRXSORCE], [VCHRNMBR], [DOCTYPE], [APTVCHNM], [APTODCTY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80500].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80500].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80500].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80500].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM80500].[APTODCDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80500].[KEYSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[ORWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM80500].[RLGANLOS]'
GO
GRANT SELECT ON  [dbo].[PM80500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM80500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM80500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM80500] TO [DYNGRP]
GO
