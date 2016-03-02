CREATE TABLE [dbo].[PM30600]
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
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[SPCLDIST] [smallint] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM30600] ADD CONSTRAINT [CK__PM30600__PSTGDAT__28A2FA0E] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[PM30600] ADD CONSTRAINT [PKPM30600] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [CNTRLTYP], [APTVCHNM], [SPCLDIST], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM30600] ON [dbo].[PM30600] ([DSTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6PM30600] ON [dbo].[PM30600] ([PSTGDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PM30600] ON [dbo].[PM30600] ([TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8PM30600] ON [dbo].[PM30600] ([TRXSORCE], [VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM30600] ON [dbo].[PM30600] ([USERID], [PSTGSTUS], [VCHRNMBR], [CNTRLTYP], [DSTINDX], [DISTTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM30600] ON [dbo].[PM30600] ([VCHRNMBR], [CNTRLTYP], [DISTTYPE], [DSTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7PM30600] ON [dbo].[PM30600] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30600].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30600].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30600].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[DSTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[CHANGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30600].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30600].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30600].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30600].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30600].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30600].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30600].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30600].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30600].[SPCLDIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30600].[DistRef]'
GO
GRANT SELECT ON  [dbo].[PM30600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM30600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM30600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM30600] TO [DYNGRP]
GO