CREATE TABLE [dbo].[CM20501]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[RECONUM] [numeric] (19, 5) NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[DSTINDX] [int] NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[CMTrxType] [smallint] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[POSTED] [tinyint] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMTrxNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM20501] ADD CONSTRAINT [CK__CM20501__TIME1__540C7B00] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[CM20501] ADD CONSTRAINT [CK__CM20501__EXCHDAT__51300E55] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20501] ADD CONSTRAINT [CK__CM20501__EXPNDAT__5224328E] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20501] ADD CONSTRAINT [CK__CM20501__GLPOSTD__531856C7] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[CM20501] ADD CONSTRAINT [CK__CM20501__TRXDATE__55009F39] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20501] ADD CONSTRAINT [PKCM20501] PRIMARY KEY NONCLUSTERED  ([CHEKBKID], [RECONUM], [DSTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM20501] ON [dbo].[CM20501] ([CHEKBKID], [RECONUM], [DSTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20501].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20501].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20501].[RECONUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20501].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20501].[DSTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20501].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20501].[CMTrxType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20501].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20501].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20501].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20501].[CMTrxNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20501].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20501].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20501].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20501].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20501].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20501].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20501].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20501].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20501].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20501].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20501].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20501].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20501].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20501].[MCTRXSTT]'
GO
GRANT SELECT ON  [dbo].[CM20501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM20501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM20501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM20501] TO [DYNGRP]
GO
