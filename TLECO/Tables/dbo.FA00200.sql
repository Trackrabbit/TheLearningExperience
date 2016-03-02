CREATE TABLE [dbo].[FA00200]
(
[ASSETINDEX] [int] NOT NULL,
[BOOKINDX] [int] NOT NULL,
[PLINSERVDATE] [datetime] NOT NULL,
[DELETEDATE] [datetime] NOT NULL,
[DEPRBEGDATE] [datetime] NOT NULL,
[FULLYDEPRFLAG] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FULLYDEPRDATE] [datetime] NOT NULL,
[ORIGINALLIFEYEARS] [smallint] NOT NULL,
[ORIGINALLIFEDAYS] [smallint] NOT NULL,
[REMAININGLIFEYEARS] [smallint] NOT NULL,
[REMAININGLIFEDAYS] [smallint] NOT NULL,
[DEPRTODATE] [datetime] NOT NULL,
[LASTRECALCDATE] [datetime] NOT NULL,
[LASTRECALCDATEFISYR] [smallint] NOT NULL,
[BEGINYEARCOST] [numeric] (19, 5) NOT NULL,
[BAGINSALVAGE] [numeric] (19, 5) NOT NULL,
[BEGINRESERVE] [numeric] (19, 5) NOT NULL,
[COSTBASIS] [numeric] (19, 5) NOT NULL,
[SALVAGEVALUE] [numeric] (19, 5) NOT NULL,
[DEPRECIATIONMETHOD] [smallint] NOT NULL,
[AVERAGINGCONV] [smallint] NOT NULL,
[SWITCHOVER] [smallint] NOT NULL,
[SWITCHFM1METHOD] [smallint] NOT NULL,
[SWITCHFM1AMOUNT] [numeric] (19, 5) NOT NULL,
[SWITCHFM1DATE] [datetime] NOT NULL,
[DLYDEPRRATE] [numeric] (19, 5) NOT NULL,
[PERDEPRRATE] [numeric] (19, 5) NOT NULL,
[YRLYDEPRRATE] [numeric] (19, 5) NOT NULL,
[SAVEDLYDEPRRATE] [numeric] (19, 5) NOT NULL,
[SAVEPERDEPRRATE] [numeric] (19, 5) NOT NULL,
[SAVEYRLYDEPRRATE] [numeric] (19, 5) NOT NULL,
[AMORTIZATIONCODE] [smallint] NOT NULL,
[AMORTIZATIONAMOUNT] [numeric] (19, 5) NOT NULL,
[CURRUNDEPRAMT] [numeric] (19, 5) NOT NULL,
[PREVRUNDEPRAMT] [numeric] (19, 5) NOT NULL,
[YTDDEPRAMT] [numeric] (19, 5) NOT NULL,
[LTDDEPRAMT] [numeric] (19, 5) NOT NULL,
[NETBOOKVALUE] [numeric] (19, 5) NOT NULL,
[LUXAUTOIND] [smallint] NOT NULL,
[PRORATEDRETDATE] [datetime] NOT NULL,
[DEPRTODATEBFRET] [datetime] NOT NULL,
[RECGAINLOSS] [numeric] (19, 5) NOT NULL,
[NONRECGAINLOSS] [numeric] (19, 5) NOT NULL,
[STLINEDEPRATRET] [numeric] (19, 5) NOT NULL,
[COSTBFRETORDEL] [numeric] (19, 5) NOT NULL,
[Initial_Allowance_Perc] [smallint] NOT NULL,
[Initial_Allowance_Amount] [numeric] (19, 5) NOT NULL,
[SPECDEPRALLOW] [smallint] NOT NULL,
[SPECDEPRALLOWPCT] [smallint] NOT NULL,
[SPECDEPRALLOWAMT] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DATEADDED] [datetime] NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LUXVANTRUCK] [tinyint] NOT NULL,
[LUXELAUTO] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__LASTMNT__7C9A5A9E] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__DATEADD__75ED5D0F] CHECK ((datepart(hour,[DATEADDED])=(0) AND datepart(minute,[DATEADDED])=(0) AND datepart(second,[DATEADDED])=(0) AND datepart(millisecond,[DATEADDED])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__DELETED__76E18148] CHECK ((datepart(hour,[DELETEDATE])=(0) AND datepart(minute,[DELETEDATE])=(0) AND datepart(second,[DELETEDATE])=(0) AND datepart(millisecond,[DELETEDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__DEPRBEG__77D5A581] CHECK ((datepart(hour,[DEPRBEGDATE])=(0) AND datepart(minute,[DEPRBEGDATE])=(0) AND datepart(second,[DEPRBEGDATE])=(0) AND datepart(millisecond,[DEPRBEGDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__DEPRTOD__78C9C9BA] CHECK ((datepart(hour,[DEPRTODATE])=(0) AND datepart(minute,[DEPRTODATE])=(0) AND datepart(second,[DEPRTODATE])=(0) AND datepart(millisecond,[DEPRTODATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__DEPRTOD__79BDEDF3] CHECK ((datepart(hour,[DEPRTODATEBFRET])=(0) AND datepart(minute,[DEPRTODATEBFRET])=(0) AND datepart(second,[DEPRTODATEBFRET])=(0) AND datepart(millisecond,[DEPRTODATEBFRET])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__FULLYDE__7AB2122C] CHECK ((datepart(hour,[FULLYDEPRDATE])=(0) AND datepart(minute,[FULLYDEPRDATE])=(0) AND datepart(second,[FULLYDEPRDATE])=(0) AND datepart(millisecond,[FULLYDEPRDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__LASTMNT__7BA63665] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__LASTREC__7D8E7ED7] CHECK ((datepart(hour,[LASTRECALCDATE])=(0) AND datepart(minute,[LASTRECALCDATE])=(0) AND datepart(second,[LASTRECALCDATE])=(0) AND datepart(millisecond,[LASTRECALCDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__PLINSER__7E82A310] CHECK ((datepart(hour,[PLINSERVDATE])=(0) AND datepart(minute,[PLINSERVDATE])=(0) AND datepart(second,[PLINSERVDATE])=(0) AND datepart(millisecond,[PLINSERVDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__PRORATE__7F76C749] CHECK ((datepart(hour,[PRORATEDRETDATE])=(0) AND datepart(minute,[PRORATEDRETDATE])=(0) AND datepart(second,[PRORATEDRETDATE])=(0) AND datepart(millisecond,[PRORATEDRETDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [CK__FA00200__SWITCHF__006AEB82] CHECK ((datepart(hour,[SWITCHFM1DATE])=(0) AND datepart(minute,[SWITCHFM1DATE])=(0) AND datepart(second,[SWITCHFM1DATE])=(0) AND datepart(millisecond,[SWITCHFM1DATE])=(0)))
GO
ALTER TABLE [dbo].[FA00200] ADD CONSTRAINT [PKFA00200] PRIMARY KEY CLUSTERED  ([ASSETINDEX], [BOOKINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA00200] ON [dbo].[FA00200] ([BOOKINDX], [ASSETINDEX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[BOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[PLINSERVDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[DELETEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[DEPRBEGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00200].[FULLYDEPRFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[FULLYDEPRDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[ORIGINALLIFEYEARS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[ORIGINALLIFEDAYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[REMAININGLIFEYEARS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[REMAININGLIFEDAYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[DEPRTODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[LASTRECALCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[LASTRECALCDATEFISYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[BEGINYEARCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[BAGINSALVAGE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[BEGINRESERVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[COSTBASIS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[SALVAGEVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[DEPRECIATIONMETHOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[AVERAGINGCONV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[SWITCHOVER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[SWITCHFM1METHOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[SWITCHFM1AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[SWITCHFM1DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[DLYDEPRRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[PERDEPRRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[YRLYDEPRRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[SAVEDLYDEPRRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[SAVEPERDEPRRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[SAVEYRLYDEPRRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[AMORTIZATIONCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[AMORTIZATIONAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[CURRUNDEPRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[PREVRUNDEPRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[YTDDEPRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[LTDDEPRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[NETBOOKVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[LUXAUTOIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[PRORATEDRETDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[DEPRTODATEBFRET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[RECGAINLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[NONRECGAINLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[STLINEDEPRATRET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[COSTBFRETORDEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[Initial_Allowance_Perc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[Initial_Allowance_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[SPECDEPRALLOW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[SPECDEPRALLOWPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[SPECDEPRALLOWAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[DATEADDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00200].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00200].[LASTMNTDUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[LUXVANTRUCK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00200].[LUXELAUTO]'
GO
GRANT SELECT ON  [dbo].[FA00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00200] TO [DYNGRP]
GO
