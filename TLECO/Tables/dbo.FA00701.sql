CREATE TABLE [dbo].[FA00701]
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
ALTER TABLE [dbo].[FA00701] ADD CONSTRAINT [CK__FA00701__LASTMNT__1DFB4E69] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA00701] ADD CONSTRAINT [CK__FA00701__RETTIME__20D7BB14] CHECK ((datepart(day,[RETTIMESTAMP])=(1) AND datepart(month,[RETTIMESTAMP])=(1) AND datepart(year,[RETTIMESTAMP])=(1900)))
GO
ALTER TABLE [dbo].[FA00701] ADD CONSTRAINT [CK__FA00701__TIME1__21CBDF4D] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[FA00701] ADD CONSTRAINT [CK__FA00701__EXCHDAT__1C1305F7] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00701] ADD CONSTRAINT [CK__FA00701__LASTMNT__1D072A30] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00701] ADD CONSTRAINT [CK__FA00701__RETDATE__1EEF72A2] CHECK ((datepart(hour,[RETDATESTAMP])=(0) AND datepart(minute,[RETDATESTAMP])=(0) AND datepart(second,[RETDATESTAMP])=(0) AND datepart(millisecond,[RETDATESTAMP])=(0)))
GO
ALTER TABLE [dbo].[FA00701] ADD CONSTRAINT [CK__FA00701__RETIREM__1FE396DB] CHECK ((datepart(hour,[RETIREMENTDATE])=(0) AND datepart(minute,[RETIREMENTDATE])=(0) AND datepart(second,[RETIREMENTDATE])=(0) AND datepart(millisecond,[RETIREMENTDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00701] ADD CONSTRAINT [PKFA00701] PRIMARY KEY CLUSTERED  ([RETIREMENTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA00701] ON [dbo].[FA00701] ([ASSETINDEX], [RETIREMENTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA00701] ON [dbo].[FA00701] ([ASSETINDXAFTRET], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5FA00701] ON [dbo].[FA00701] ([RETIREEVENT], [RETIRESEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA00701] ON [dbo].[FA00701] ([RETIREMENTDATE], [ASSETID], [RETIREMENTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[RETIREMENTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[RETIRESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[RETIREEVENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00701].[ASSETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00701].[RETDATESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00701].[RETTIMESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[RETIREMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00701].[RETIREMENTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00701].[RETIREMENTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[CASHPROCEEDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[Orig_Cash_Proceeds]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[NONCASHPROCEEDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[Orig_Non_Cash_Proceeds]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[EXPOFSALE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[Orig_Expenses_of_Sale]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[PARTIALQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[PARTIALCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[PARTIALPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[ASSETINDXAFTRET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00701].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00701].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00701].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00701].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00701].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00701].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00701].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00701].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00701].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00701].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA00701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00701] TO [DYNGRP]
GO
