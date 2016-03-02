CREATE TABLE [dbo].[SVC30603]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SVC_Invoice_SEQ_Number] [int] NOT NULL,
[INVODATE] [datetime] NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[SVC_Coverage_Start_Date] [datetime] NOT NULL,
[SVC_Coverage_End_Date] [datetime] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PSTDAMNT] [numeric] (19, 5) NOT NULL,
[SVC_Invoice_Credit_Amoun] [numeric] (19, 5) NOT NULL,
[SVC_Daily_Rate] [numeric] (19, 5) NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[ORDOCAMT] [numeric] (19, 5) NOT NULL,
[ORIGPSTDAMNT] [numeric] (19, 5) NOT NULL,
[OrigInvCreditAmt] [numeric] (19, 5) NOT NULL,
[ORDDLRAT] [numeric] (19, 5) NOT NULL,
[SVC_Contract_Version] [smallint] NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcReverseType] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30603] ADD CONSTRAINT [CK__SVC30603__INVODA__3C55B857] CHECK ((datepart(hour,[INVODATE])=(0) AND datepart(minute,[INVODATE])=(0) AND datepart(second,[INVODATE])=(0) AND datepart(millisecond,[INVODATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30603] ADD CONSTRAINT [CK__SVC30603__POSTED__3D49DC90] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC30603] ADD CONSTRAINT [CK__SVC30603__SVC_Co__3F322502] CHECK ((datepart(hour,[SVC_Coverage_End_Date])=(0) AND datepart(minute,[SVC_Coverage_End_Date])=(0) AND datepart(second,[SVC_Coverage_End_Date])=(0) AND datepart(millisecond,[SVC_Coverage_End_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30603] ADD CONSTRAINT [CK__SVC30603__SVC_Co__3E3E00C9] CHECK ((datepart(hour,[SVC_Coverage_Start_Date])=(0) AND datepart(minute,[SVC_Coverage_Start_Date])=(0) AND datepart(second,[SVC_Coverage_Start_Date])=(0) AND datepart(millisecond,[SVC_Coverage_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30603] ADD CONSTRAINT [PKSVC30603] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version], [LNSEQNBR], [SVC_Invoice_SEQ_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30603] ON [dbo].[SVC30603] ([CONSTS], [CONTNBR], [SVC_Contract_Version], [POSTED], [INVODATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC30603] ON [dbo].[SVC30603] ([SOPTYPE], [SOPNUMBE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30603].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30603].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30603].[SVC_Invoice_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30603].[INVODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30603].[SVC_Coverage_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30603].[SVC_Coverage_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30603].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30603].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[PSTDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[SVC_Invoice_Credit_Amoun]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[SVC_Daily_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[ORDOCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[ORIGPSTDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[OrigInvCreditAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30603].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30603].[SVC_Contract_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30603].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30603].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30603].[svcReverseType]'
GO
GRANT SELECT ON  [dbo].[SVC30603] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30603] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30603] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30603] TO [DYNGRP]
GO
