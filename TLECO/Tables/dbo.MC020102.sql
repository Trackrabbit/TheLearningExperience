CREATE TABLE [dbo].[MC020102]
(
[DCSTATUS] [smallint] NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[ORCTRXAM] [numeric] (19, 5) NOT NULL,
[ORSLSAMT] [numeric] (19, 5) NOT NULL,
[ORCSTAMT] [numeric] (19, 5) NOT NULL,
[ORFRTAMT] [numeric] (19, 5) NOT NULL,
[ORMISCAMT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[ORCASAMT] [numeric] (19, 5) NOT NULL,
[ORCHKAMT] [numeric] (19, 5) NOT NULL,
[ORCCDAMT] [numeric] (19, 5) NOT NULL,
[ORAPPAMT] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[ORDAVAMT] [numeric] (19, 5) NOT NULL,
[ORDATKN] [numeric] (19, 5) NOT NULL,
[ORDISRTD] [numeric] (19, 5) NOT NULL,
[ORDDLRAT] [numeric] (19, 5) NOT NULL,
[ORTDISAM] [numeric] (19, 5) NOT NULL,
[ORORGTRX] [numeric] (19, 5) NOT NULL,
[ORWROFAM] [numeric] (19, 5) NOT NULL,
[ORCOMAMT] [numeric] (19, 5) NOT NULL,
[ORBKTSLS] [numeric] (19, 5) NOT NULL,
[ORBKTFRT] [numeric] (19, 5) NOT NULL,
[ORBKTMSC] [numeric] (19, 5) NOT NULL,
[UNGANLOS] [numeric] (19, 5) NOT NULL,
[RMMCERRS] [binary] (4) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[OrigBackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC020102] ADD CONSTRAINT [CK__MC020102__TIME1__2EC5E7B8] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[MC020102] ADD CONSTRAINT [CK__MC020102__DOCDAT__2CDD9F46] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[MC020102] ADD CONSTRAINT [CK__MC020102__EXCHDA__2DD1C37F] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[MC020102] ADD CONSTRAINT [PKMC020102] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4MC020102] ON [dbo].[MC020102] ([DCSTATUS], [CURNCYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5MC020102] ON [dbo].[MC020102] ([DCSTATUS], [CURNCYID], [RATETPID], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MC020102] ON [dbo].[MC020102] ([DCSTATUS], [CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC020102] ON [dbo].[MC020102] ([DCSTATUS], [RMDTYPAL], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020102].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020102].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020102].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020102].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020102].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020102].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020102].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020102].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020102].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020102].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020102].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020102].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020102].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORCTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORSLSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORCSTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORFRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORMISCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORCASAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORCHKAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORCCDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORDAVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORDISRTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORTDISAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORORGTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORCOMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORBKTSLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORBKTFRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[ORBKTMSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[UNGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020102].[RMMCERRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020102].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020102].[OrigBackoutTradeDisc]'
GO
GRANT SELECT ON  [dbo].[MC020102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC020102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC020102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC020102] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[MC020102] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[MC020102] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[MC020102] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[MC020102] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[MC020102] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[MC020102] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[MC020102] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[MC020102] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[MC020102] TO [rpt_executive]
GO
