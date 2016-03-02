CREATE TABLE [dbo].[IVC10200]
(
[DOCTYPE] [smallint] NOT NULL,
[INVCNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[PYMTTYPE] [smallint] NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCTNCCRD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AMNTPAID] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[AUTHCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTFLAG] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVC10200] ADD CONSTRAINT [CK__IVC10200__DOCDAT__5DB5E0CB] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[IVC10200] ADD CONSTRAINT [CK__IVC10200__EXPNDA__5EAA0504] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[IVC10200] ADD CONSTRAINT [PKIVC10200] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [INVCNMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IVC10200] ON [dbo].[IVC10200] ([RMDTYPAL], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10200].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[INVCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10200].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10200].[PYMTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10200].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[RCTNCCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10200].[AMNTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVC10200].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IVC10200].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[AUTHCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10200].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10200].[EFTFLAG]'
GO
GRANT SELECT ON  [dbo].[IVC10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IVC10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IVC10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IVC10200] TO [DYNGRP]
GO
