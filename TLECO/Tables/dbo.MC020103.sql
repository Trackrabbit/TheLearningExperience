CREATE TABLE [dbo].[MC020103]
(
[DCSTATUS] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[ORCTRXAM] [numeric] (19, 5) NOT NULL,
[OPURAMT] [numeric] (19, 5) NOT NULL,
[ORFRTAMT] [numeric] (19, 5) NOT NULL,
[OMISCAMT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[ORCASAMT] [numeric] (19, 5) NOT NULL,
[ORCHKAMT] [numeric] (19, 5) NOT NULL,
[ORCHKTTL] [numeric] (19, 5) NOT NULL,
[ORCCDAMT] [numeric] (19, 5) NOT NULL,
[ORAPPAMT] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[ORDATKN] [numeric] (19, 5) NOT NULL,
[ORDDLRAT] [numeric] (19, 5) NOT NULL,
[ORTDISAM] [numeric] (19, 5) NOT NULL,
[ORWROFAM] [numeric] (19, 5) NOT NULL,
[OBKPURAMT] [numeric] (19, 5) NOT NULL,
[ORBKTFRT] [numeric] (19, 5) NOT NULL,
[ORBKTMSC] [numeric] (19, 5) NOT NULL,
[UNGANLOS] [numeric] (19, 5) NOT NULL,
[RMMCERRS] [binary] (4) NOT NULL,
[OCHGAMT] [numeric] (19, 5) NOT NULL,
[ORDOCAMT] [numeric] (19, 5) NOT NULL,
[ODISAMTAV] [numeric] (19, 5) NOT NULL,
[ORGAPDISCTKN] [numeric] (19, 5) NOT NULL,
[OTOTPAY] [numeric] (19, 5) NOT NULL,
[OR1099AM] [numeric] (19, 5) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[OrigBackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC020103] ADD CONSTRAINT [CK__MC020103__TIME1__338A9CD5] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[MC020103] ADD CONSTRAINT [CK__MC020103__DOCDAT__31A25463] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[MC020103] ADD CONSTRAINT [CK__MC020103__EXCHDA__3296789C] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[MC020103] ADD CONSTRAINT [PKMC020103] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [VCHRNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4MC020103] ON [dbo].[MC020103] ([DCSTATUS], [CURNCYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5MC020103] ON [dbo].[MC020103] ([DCSTATUS], [CURNCYID], [RATETPID], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC020103] ON [dbo].[MC020103] ([DCSTATUS], [DOCTYPE], [VCHRNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MC020103] ON [dbo].[MC020103] ([DCSTATUS], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020103].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020103].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020103].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020103].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020103].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020103].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020103].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020103].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020103].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC020103].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020103].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC020103].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020103].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORCTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[OPURAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORFRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[OMISCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORCASAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORCHKAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORCHKTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORCCDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORTDISAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[OBKPURAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORBKTFRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORBKTMSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[UNGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020103].[RMMCERRS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[OCHGAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORDOCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ODISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[ORGAPDISCTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[OTOTPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[OR1099AM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC020103].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC020103].[OrigBackoutTradeDisc]'
GO
GRANT SELECT ON  [dbo].[MC020103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC020103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC020103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC020103] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[MC020103] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[MC020103] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[MC020103] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[MC020103] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[MC020103] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[MC020103] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[MC020103] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[MC020103] TO [rpt_executive]
GO
