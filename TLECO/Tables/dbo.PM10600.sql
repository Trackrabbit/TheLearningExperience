CREATE TABLE [dbo].[PM10600]
(
[DOCTYPE] [smallint] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[DSTINDX] [int] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[CHANGED] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[SPCLDIST] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM10600] ADD CONSTRAINT [CK__PM10600__PSTGDAT__5792F321] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10600] ADD CONSTRAINT [PKPM10600] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [CNTRLTYP], [APTVCHNM], [SPCLDIST], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM10600] ON [dbo].[PM10600] ([USERID], [PSTGSTUS], [VCHRNMBR], [CNTRLTYP], [DSTINDX], [DISTTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM10600] ON [dbo].[PM10600] ([VCHRNMBR], [CNTRLTYP], [APTVCHNM], [DISTTYPE], [DSTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10600].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10600].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10600].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[DSTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[CHANGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10600].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10600].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10600].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10600].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10600].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10600].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10600].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10600].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10600].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10600].[SPCLDIST]'
GO
GRANT SELECT ON  [dbo].[PM10600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM10600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM10600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM10600] TO [DYNGRP]
GO
