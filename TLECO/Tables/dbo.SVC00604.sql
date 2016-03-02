CREATE TABLE [dbo].[SVC00604]
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00604] ADD CONSTRAINT [CK__SVC00604__POSTED__054F9C30] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00604] ADD CONSTRAINT [CK__SVC00604__SVC_Co__0737E4A2] CHECK ((datepart(hour,[SVC_Coverage_End_Date])=(0) AND datepart(minute,[SVC_Coverage_End_Date])=(0) AND datepart(second,[SVC_Coverage_End_Date])=(0) AND datepart(millisecond,[SVC_Coverage_End_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00604] ADD CONSTRAINT [CK__SVC00604__SVC_Co__0643C069] CHECK ((datepart(hour,[SVC_Coverage_Start_Date])=(0) AND datepart(minute,[SVC_Coverage_Start_Date])=(0) AND datepart(second,[SVC_Coverage_Start_Date])=(0) AND datepart(millisecond,[SVC_Coverage_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00604] ADD CONSTRAINT [CK__SVC00604__Transa__082C08DB] CHECK ((datepart(hour,[Transaction_Date])=(0) AND datepart(minute,[Transaction_Date])=(0) AND datepart(second,[Transaction_Date])=(0) AND datepart(millisecond,[Transaction_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00604] ADD CONSTRAINT [PKSVC00604] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [LNSEQNBR], [YEAR1], [PERIODID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00604] ON [dbo].[SVC00604] ([CONSTS], [CONTNBR], [LNSEQNBR], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00604] ON [dbo].[SVC00604] ([CONSTS], [CONTNBR], [Status], [LNSEQNBR], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC00604] ON [dbo].[SVC00604] ([CONSTS], [CONTNBR], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00604] ON [dbo].[SVC00604] ([Status], [YEAR1], [PERIODID], [CONSTS], [CONTNBR], [LNSEQNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00604] ON [dbo].[SVC00604] ([YEAR1], [PERIODID], [CONSTS], [CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00604].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00604].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00604].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00604].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00604].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00604].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00604].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00604].[Transaction_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00604].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[PSTDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[Originating_PostedAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00604].[Source_Trx_Document_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00604].[SourceTrxDocumentNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[Transaction_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[OrigTransactionAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00604].[SVC_Coverage_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00604].[SVC_Coverage_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[SVC_Invoice_Credit_Amoun]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[OrigInvCreditAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[Net_Transaction_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00604].[OrigNetTransactionAmount]'
GO
GRANT SELECT ON  [dbo].[SVC00604] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00604] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00604] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00604] TO [DYNGRP]
GO
