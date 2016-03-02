CREATE TABLE [dbo].[POP10170]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PrepaymentSource] [smallint] NOT NULL,
[PYENTTYP] [smallint] NOT NULL,
[PrepaymentAmount] [numeric] (19, 5) NOT NULL,
[OriginatingPrepaymentAmt] [numeric] (19, 5) NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[ORAPPAMT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[ORCTRXAM] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[PrepaymentAccountIndex] [int] NOT NULL,
[Cash_Account_Index] [int] NOT NULL,
[PAY_ACCT_IDX] [int] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP10170] ADD CONSTRAINT [CK__POP10170__TIME1__34D3C6C9] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[POP10170] ADD CONSTRAINT [CK__POP10170__EXCHDA__32EB7E57] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[POP10170] ADD CONSTRAINT [CK__POP10170__GLPOST__33DFA290] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[POP10170] ADD CONSTRAINT [PKPOP10170] PRIMARY KEY NONCLUSTERED  ([PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP10170] ON [dbo].[POP10170] ([BCHSOURC], [BACHNUMB], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP10170] ON [dbo].[POP10170] ([PMNTNMBR], [PONUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP10170] ON [dbo].[POP10170] ([PSTGSTUS], [PONUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[PrepaymentSource]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[PYENTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[PrepaymentAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[OriginatingPrepaymentAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[ORCTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[PrepaymentAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[Cash_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[PAY_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10170].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP10170].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10170].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP10170].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP10170].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP10170].[MCTRXSTT]'
GO
GRANT SELECT ON  [dbo].[POP10170] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP10170] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP10170] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP10170] TO [DYNGRP]
GO
