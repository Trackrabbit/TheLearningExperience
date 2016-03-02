CREATE TABLE [dbo].[AAG2001T]
(
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[depositnumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RcpType] [smallint] NOT NULL,
[RCPTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTAMT] [numeric] (19, 5) NOT NULL,
[BANKNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKBRNCH] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPDATED] [tinyint] NOT NULL,
[MARKED] [tinyint] NOT NULL,
[receiptdate] [datetime] NOT NULL,
[Checkbook_Amount] [numeric] (19, 5) NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[Receiving_Exchange_Rate] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[RLGANLOS] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[ORIGAMT] [numeric] (19, 5) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG2001T] ADD CONSTRAINT [CK__AAG2001T__TIME1__40113AA2] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[AAG2001T] ADD CONSTRAINT [CK__AAG2001T__EXCHDA__3E28F230] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[AAG2001T] ADD CONSTRAINT [CK__AAG2001T__EXPNDA__3F1D1669] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[AAG2001T] ADD CONSTRAINT [CK__AAG2001T__receip__41055EDB] CHECK ((datepart(hour,[receiptdate])=(0) AND datepart(minute,[receiptdate])=(0) AND datepart(second,[receiptdate])=(0) AND datepart(millisecond,[receiptdate])=(0)))
GO
ALTER TABLE [dbo].[AAG2001T] ADD CONSTRAINT [PKAAG2001T] PRIMARY KEY NONCLUSTERED  ([CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG2001T] ON [dbo].[AAG2001T] ([MARKED], [CMRECNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2001T].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2001T].[depositnumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2001T].[RcpType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2001T].[RCPTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2001T].[RCPTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2001T].[BANKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2001T].[BNKBRNCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2001T].[UPDATED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2001T].[MARKED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG2001T].[receiptdate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2001T].[Checkbook_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2001T].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2001T].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2001T].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2001T].[Receiving_Exchange_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG2001T].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG2001T].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2001T].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG2001T].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2001T].[RLGANLOS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG2001T].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2001T].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2001T].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2001T].[ORIGAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG2001T].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG2001T].[MCTRXSTT]'
GO
GRANT SELECT ON  [dbo].[AAG2001T] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG2001T] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG2001T] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG2001T] TO [DYNGRP]
GO
