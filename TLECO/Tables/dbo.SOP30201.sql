CREATE TABLE [dbo].[SOP30201]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[PYMTTYPE] [smallint] NOT NULL,
[AMNTPAID] [numeric] (19, 5) NOT NULL,
[OAMTPAID] [numeric] (19, 5) NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTNCCRD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[AUTHCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMNTDAT] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[CASHINDEX] [int] NOT NULL,
[DEPINDEX] [int] NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP30201] ADD CONSTRAINT [CK__SOP30201__TIME1__3D89085B] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SOP30201] ADD CONSTRAINT [CK__SOP30201__DOCDAT__38C4533E] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP30201] ADD CONSTRAINT [CK__SOP30201__EXCHDA__39B87777] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP30201] ADD CONSTRAINT [CK__SOP30201__EXPNDA__3AAC9BB0] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP30201] ADD CONSTRAINT [CK__SOP30201__GLPOST__3BA0BFE9] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[SOP30201] ADD CONSTRAINT [CK__SOP30201__PYMNTD__3C94E422] CHECK ((datepart(hour,[PYMNTDAT])=(0) AND datepart(minute,[PYMNTDAT])=(0) AND datepart(second,[PYMNTDAT])=(0) AND datepart(millisecond,[PYMNTDAT])=(0)))
GO
ALTER TABLE [dbo].[SOP30201] ADD CONSTRAINT [PKSOP30201] PRIMARY KEY NONCLUSTERED  ([TRXSORCE], [SOPTYPE], [SOPNUMBE], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30201].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[PYMTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30201].[AMNTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30201].[OAMTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[RCTNCCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30201].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[AUTHCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30201].[PYMNTDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30201].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[CASHINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[DEPINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30201].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP30201].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30201].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP30201].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP30201].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP30201].[TRXSORCE]'
GO
GRANT SELECT ON  [dbo].[SOP30201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP30201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP30201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP30201] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP30201] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP30201] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP30201] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP30201] TO [RAPIDGRP]
GO
