CREATE TABLE [dbo].[SOP10103]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[PYMTTYPE] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTNCCRD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AUTHCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AMNTPAID] [numeric] (19, 5) NOT NULL,
[OAMTPAID] [numeric] (19, 5) NOT NULL,
[AMNTREMA] [numeric] (19, 5) NOT NULL,
[OAMNTREM] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPSTATS] [smallint] NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[CASHINDEX] [int] NOT NULL,
[DEPINDEX] [int] NOT NULL,
[EFTFLAG] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10103] ADD CONSTRAINT [CK__SOP10103__DOCDAT__67B44C51] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10103] ADD CONSTRAINT [CK__SOP10103__EXPNDA__68A8708A] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10103] ADD CONSTRAINT [CK__SOP10103__GLPOST__699C94C3] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[SOP10103] ADD CONSTRAINT [PKSOP10103] PRIMARY KEY NONCLUSTERED  ([SOPTYPE], [SOPNUMBE], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10103] ON [dbo].[SOP10103] ([DOCNUMBR], [RMDTYPAL], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[PYMTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[RCTNCCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[AUTHCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10103].[AMNTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10103].[OAMTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10103].[AMNTREMA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10103].[OAMNTREM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10103].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10103].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10103].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[DEPSTATS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10103].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[CASHINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[DEPINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10103].[EFTFLAG]'
GO
GRANT SELECT ON  [dbo].[SOP10103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10103] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10103] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10103] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10103] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10103] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[SOP10103] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[SOP10103] TO [rpt_order processor]
GO
