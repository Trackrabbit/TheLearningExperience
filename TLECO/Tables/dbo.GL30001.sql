CREATE TABLE [dbo].[GL30001]
(
[TranslationCurrencyID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HSTYEAR] [smallint] NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Original_Exchange_Rate] [numeric] (19, 7) NOT NULL,
[ORGNTSRC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[TranslationCreditAmount] [numeric] (19, 5) NOT NULL,
[TranslationDebitAmount] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[CurrencyTranslationType] [smallint] NOT NULL,
[Identity_Column] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL30001] ADD CONSTRAINT [CK__GL30001__TIME1__1F6F60E6] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[GL30001] ADD CONSTRAINT [CK__GL30001__EXCHDAT__1E7B3CAD] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[GL30001] ADD CONSTRAINT [CK__GL30001__TRXDATE__2063851F] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[GL30001] ADD CONSTRAINT [PKGL30001] PRIMARY KEY NONCLUSTERED  ([TranslationCurrencyID], [HSTYEAR], [ACTINDX], [Ledger_ID], [CURNCYID], [JRNENTRY], [TRXDATE], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL30001] ON [dbo].[GL30001] ([ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30001].[TranslationCurrencyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[HSTYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30001].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30001].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30001].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30001].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30001].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[Original_Exchange_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30001].[ORGNTSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[TranslationCreditAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[TranslationDebitAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30001].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL30001].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30001].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL30001].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL30001].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[CurrencyTranslationType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL30001].[Identity_Column]'
GO
GRANT SELECT ON  [dbo].[GL30001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL30001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL30001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL30001] TO [DYNGRP]
GO
