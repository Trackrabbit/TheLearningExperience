CREATE TABLE [dbo].[SVC30604]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Status] [smallint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[Transaction_Date] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTDAMNT] [numeric] (19, 5) NOT NULL,
[Originating_PostedAmount] [numeric] (19, 5) NOT NULL,
[Source_Trx_Document_Type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SourceTrxDocumentNumber] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Transaction_Amount] [numeric] (19, 5) NOT NULL,
[OrigTransactionAmount] [numeric] (19, 5) NOT NULL,
[SVC_Coverage_Start_Date] [datetime] NOT NULL,
[SVC_Coverage_End_Date] [datetime] NOT NULL,
[SVC_Invoice_Credit_Amoun] [numeric] (19, 5) NOT NULL,
[OrigInvCreditAmt] [numeric] (19, 5) NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[ORDDLRAT] [numeric] (19, 5) NOT NULL,
[Net_Transaction_Amount] [numeric] (19, 5) NOT NULL,
[OrigNetTransactionAmount] [numeric] (19, 5) NOT NULL,
[SVC_Contract_Version] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30604] ADD CONSTRAINT [CK__SVC30604__POSTED__420E91AD] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC30604] ADD CONSTRAINT [CK__SVC30604__SVC_Co__43F6DA1F] CHECK ((datepart(hour,[SVC_Coverage_End_Date])=(0) AND datepart(minute,[SVC_Coverage_End_Date])=(0) AND datepart(second,[SVC_Coverage_End_Date])=(0) AND datepart(millisecond,[SVC_Coverage_End_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30604] ADD CONSTRAINT [CK__SVC30604__SVC_Co__4302B5E6] CHECK ((datepart(hour,[SVC_Coverage_Start_Date])=(0) AND datepart(minute,[SVC_Coverage_Start_Date])=(0) AND datepart(second,[SVC_Coverage_Start_Date])=(0) AND datepart(millisecond,[SVC_Coverage_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30604] ADD CONSTRAINT [CK__SVC30604__Transa__44EAFE58] CHECK ((datepart(hour,[Transaction_Date])=(0) AND datepart(minute,[Transaction_Date])=(0) AND datepart(second,[Transaction_Date])=(0) AND datepart(millisecond,[Transaction_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30604] ADD CONSTRAINT [PKSVC30604] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version], [LNSEQNBR], [YEAR1], [PERIODID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC30604] ON [dbo].[SVC30604] ([CONSTS], [CONTNBR], [SVC_Contract_Version], [LNSEQNBR], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC30604] ON [dbo].[SVC30604] ([CONSTS], [CONTNBR], [SVC_Contract_Version], [Status], [LNSEQNBR], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC30604] ON [dbo].[SVC30604] ([CONSTS], [CONTNBR], [SVC_Contract_Version], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30604] ON [dbo].[SVC30604] ([Status], [YEAR1], [PERIODID], [CONSTS], [CONTNBR], [SVC_Contract_Version], [LNSEQNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC30604] ON [dbo].[SVC30604] ([YEAR1], [PERIODID], [CONSTS], [CONTNBR], [SVC_Contract_Version], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30604].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30604].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30604].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30604].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30604].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30604].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30604].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30604].[Transaction_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30604].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[PSTDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[Originating_PostedAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30604].[Source_Trx_Document_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30604].[SourceTrxDocumentNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[Transaction_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[OrigTransactionAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30604].[SVC_Coverage_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30604].[SVC_Coverage_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[SVC_Invoice_Credit_Amoun]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[OrigInvCreditAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[Net_Transaction_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30604].[OrigNetTransactionAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30604].[SVC_Contract_Version]'
GO
GRANT SELECT ON  [dbo].[SVC30604] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30604] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30604] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30604] TO [DYNGRP]
GO
