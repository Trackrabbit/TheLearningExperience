CREATE TABLE [dbo].[SVC00614]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Status] [smallint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[Transaction_Date] [datetime] NOT NULL,
[PSTDAMNT] [numeric] (19, 5) NOT NULL,
[Source_Trx_Document_Type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SourceTrxDocumentNumber] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Transaction_Amount] [numeric] (19, 5) NOT NULL,
[SVC_Coverage_Start_Date] [datetime] NOT NULL,
[SVC_Coverage_End_Date] [datetime] NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[Net_Transaction_Amount] [numeric] (19, 5) NOT NULL,
[ERMSGNUM] [int] NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00614] ADD CONSTRAINT [CK__SVC00614__POSTED__37DB1BFD] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00614] ADD CONSTRAINT [CK__SVC00614__SVC_Co__39C3646F] CHECK ((datepart(hour,[SVC_Coverage_End_Date])=(0) AND datepart(minute,[SVC_Coverage_End_Date])=(0) AND datepart(second,[SVC_Coverage_End_Date])=(0) AND datepart(millisecond,[SVC_Coverage_End_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00614] ADD CONSTRAINT [CK__SVC00614__SVC_Co__38CF4036] CHECK ((datepart(hour,[SVC_Coverage_Start_Date])=(0) AND datepart(minute,[SVC_Coverage_Start_Date])=(0) AND datepart(second,[SVC_Coverage_Start_Date])=(0) AND datepart(millisecond,[SVC_Coverage_Start_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00614] ADD CONSTRAINT [CK__SVC00614__Transa__3AB788A8] CHECK ((datepart(hour,[Transaction_Date])=(0) AND datepart(minute,[Transaction_Date])=(0) AND datepart(second,[Transaction_Date])=(0) AND datepart(millisecond,[Transaction_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00614] ADD CONSTRAINT [PKSVC00614] PRIMARY KEY NONCLUSTERED  ([USERID], [TRXSORCE], [CONSTS], [CONTNBR], [LNSEQNBR], [YEAR1], [PERIODID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00614] ON [dbo].[SVC00614] ([USERID], [TRXSORCE], [YEAR1], [PERIODID], [CONSTS], [CONTNBR], [LNSEQNBR], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00614].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00614].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00614].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00614].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00614].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00614].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00614].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00614].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00614].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00614].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00614].[Transaction_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00614].[PSTDAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00614].[Source_Trx_Document_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00614].[SourceTrxDocumentNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00614].[Transaction_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00614].[SVC_Coverage_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00614].[SVC_Coverage_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00614].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00614].[Net_Transaction_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00614].[ERMSGNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00614].[ERRDESCR]'
GO
GRANT SELECT ON  [dbo].[SVC00614] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00614] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00614] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00614] TO [DYNGRP]
GO
