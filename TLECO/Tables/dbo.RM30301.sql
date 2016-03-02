CREATE TABLE [dbo].[RM30301]
(
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[PROJCTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CATEGUSD] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM30301] ADD CONSTRAINT [CK__RM30301__POSTEDD__67E9567B] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[RM30301] ADD CONSTRAINT [PKRM30301] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM30301] ON [dbo].[RM30301] ([CUSTNMBR], [RMDTYPAL], [DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM30301] ON [dbo].[RM30301] ([DSTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM30301] ON [dbo].[RM30301] ([POSTEDDT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM30301] ON [dbo].[RM30301] ([TRXSORCE], [RMDTYPAL], [DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30301].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30301].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30301].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30301].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30301].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30301].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30301].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30301].[DSTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30301].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30301].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30301].[PROJCTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30301].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30301].[CATEGUSD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30301].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30301].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30301].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30301].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30301].[DistRef]'
GO
GRANT SELECT ON  [dbo].[RM30301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM30301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM30301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM30301] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM30301] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[RM30301] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[RM30301] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[RM30301] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[RM30301] TO [rpt_executive]
GO
