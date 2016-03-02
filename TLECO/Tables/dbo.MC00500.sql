CREATE TABLE [dbo].[MC00500]
(
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORIGCNTRLTOT] [numeric] (19, 5) NOT NULL,
[ORIGBTCHTOT] [numeric] (19, 5) NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[CHEKDATE] [datetime] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC00500] ADD CONSTRAINT [CK__MC00500__TIME1__2A01329B] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[MC00500] ADD CONSTRAINT [CK__MC00500__CHEKDAT__2818EA29] CHECK ((datepart(hour,[CHEKDATE])=(0) AND datepart(minute,[CHEKDATE])=(0) AND datepart(second,[CHEKDATE])=(0) AND datepart(millisecond,[CHEKDATE])=(0)))
GO
ALTER TABLE [dbo].[MC00500] ADD CONSTRAINT [CK__MC00500__EXCHDAT__290D0E62] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[MC00500] ADD CONSTRAINT [PKMC00500] PRIMARY KEY NONCLUSTERED  ([BCHSOURC], [BACHNUMB]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC00500] ON [dbo].[MC00500] ([BACHNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00500].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00500].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00500].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00500].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00500].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC00500].[ORIGCNTRLTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC00500].[ORIGBTCHTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00500].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC00500].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC00500].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00500].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC00500].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC00500].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC00500].[CHEKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC00500].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC00500].[MCTRXSTT]'
GO
GRANT SELECT ON  [dbo].[MC00500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC00500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC00500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC00500] TO [DYNGRP]
GO
