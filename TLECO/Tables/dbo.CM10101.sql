CREATE TABLE [dbo].[CM10101]
(
[depositnumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[RCPTCOUNT] [smallint] NOT NULL,
[ORCHKTTL] [numeric] (19, 5) NOT NULL,
[Originating_Check_Count] [smallint] NOT NULL,
[Orig_Credit_Card_Total] [numeric] (19, 5) NOT NULL,
[Originating_Credit_Card_] [smallint] NOT NULL,
[Originating_Cash_Total] [numeric] (19, 5) NOT NULL,
[Originating_Cash_Count] [smallint] NOT NULL,
[Originating_Coin_Amount] [numeric] (19, 5) NOT NULL,
[Originating_Deposit_Amou] [numeric] (19, 5) NOT NULL,
[Originating_Checkbook_Am] [numeric] (19, 5) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM10101] ADD CONSTRAINT [CK__CM10101__TIME1__2180FB33] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CM10101] ADD CONSTRAINT [CK__CM10101__EXCHDAT__1F98B2C1] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[CM10101] ADD CONSTRAINT [CK__CM10101__EXPNDAT__208CD6FA] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[CM10101] ADD CONSTRAINT [PKCM10101] PRIMARY KEY CLUSTERED  ([depositnumber], [CHEKBKID], [CURNCYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10101].[depositnumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10101].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10101].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10101].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10101].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM10101].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10101].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10101].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10101].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM10101].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10101].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10101].[RCPTCOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[ORCHKTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10101].[Originating_Check_Count]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[Orig_Credit_Card_Total]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10101].[Originating_Credit_Card_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[Originating_Cash_Total]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10101].[Originating_Cash_Count]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[Originating_Coin_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[Originating_Deposit_Amou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[Originating_Checkbook_Am]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM10101].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM10101].[MCTRXSTT]'
GO
GRANT SELECT ON  [dbo].[CM10101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM10101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM10101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM10101] TO [DYNGRP]
GO
