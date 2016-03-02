CREATE TABLE [dbo].[FA00700]
(
[RETIREMENTINDX] [int] NOT NULL,
[RETIRESEQ] [smallint] NOT NULL,
[RETIREEVENT] [int] NOT NULL,
[ASSETINDEX] [int] NOT NULL,
[ASSETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETDATESTAMP] [datetime] NOT NULL,
[RETTIMESTAMP] [datetime] NOT NULL,
[RETIREMENTTYPE] [smallint] NOT NULL,
[RETIREMENTDATE] [datetime] NOT NULL,
[RETIREMENTCODE] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CASHPROCEEDS] [numeric] (19, 5) NOT NULL,
[Orig_Cash_Proceeds] [numeric] (19, 5) NOT NULL,
[NONCASHPROCEEDS] [numeric] (19, 5) NOT NULL,
[Orig_Non_Cash_Proceeds] [numeric] (19, 5) NOT NULL,
[EXPOFSALE] [numeric] (19, 5) NOT NULL,
[Orig_Expenses_of_Sale] [numeric] (19, 5) NOT NULL,
[PARTIALQTY] [int] NOT NULL,
[PARTIALCOST] [numeric] (19, 5) NOT NULL,
[PARTIALPCT] [smallint] NOT NULL,
[ASSETINDXAFTRET] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA00700] ADD CONSTRAINT [CK__FA00700__LASTMNT__15660868] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA00700] ADD CONSTRAINT [CK__FA00700__RETTIME__18427513] CHECK ((datepart(day,[RETTIMESTAMP])=(1) AND datepart(month,[RETTIMESTAMP])=(1) AND datepart(year,[RETTIMESTAMP])=(1900)))
GO
ALTER TABLE [dbo].[FA00700] ADD CONSTRAINT [CK__FA00700__TIME1__1936994C] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[FA00700] ADD CONSTRAINT [CK__FA00700__EXCHDAT__137DBFF6] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00700] ADD CONSTRAINT [CK__FA00700__LASTMNT__1471E42F] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00700] ADD CONSTRAINT [CK__FA00700__RETDATE__165A2CA1] CHECK ((datepart(hour,[RETDATESTAMP])=(0) AND datepart(minute,[RETDATESTAMP])=(0) AND datepart(second,[RETDATESTAMP])=(0) AND datepart(millisecond,[RETDATESTAMP])=(0)))
GO
ALTER TABLE [dbo].[FA00700] ADD CONSTRAINT [CK__FA00700__RETIREM__174E50DA] CHECK ((datepart(hour,[RETIREMENTDATE])=(0) AND datepart(minute,[RETIREMENTDATE])=(0) AND datepart(second,[RETIREMENTDATE])=(0) AND datepart(millisecond,[RETIREMENTDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00700] ADD CONSTRAINT [PKFA00700] PRIMARY KEY CLUSTERED  ([RETIREMENTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA00700] ON [dbo].[FA00700] ([ASSETINDEX], [RETIREMENTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA00700] ON [dbo].[FA00700] ([ASSETINDXAFTRET]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5FA00700] ON [dbo].[FA00700] ([RETIREEVENT], [RETIRESEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA00700] ON [dbo].[FA00700] ([RETIREMENTDATE], [ASSETID], [RETIREMENTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[RETIREMENTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[RETIRESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[RETIREEVENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00700].[ASSETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00700].[RETDATESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00700].[RETTIMESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[RETIREMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00700].[RETIREMENTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00700].[RETIREMENTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[CASHPROCEEDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[Orig_Cash_Proceeds]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[NONCASHPROCEEDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[Orig_Non_Cash_Proceeds]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[EXPOFSALE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[Orig_Expenses_of_Sale]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[PARTIALQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[PARTIALCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[PARTIALPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[ASSETINDXAFTRET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00700].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00700].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00700].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00700].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00700].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00700].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00700].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00700].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00700].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00700].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA00700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00700] TO [DYNGRP]
GO
