CREATE TABLE [dbo].[CM50507]
(
[POSTEDDT] [datetime] NOT NULL,
[CMTrxNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[DepAmt] [numeric] (19, 5) NOT NULL,
[STRVAL] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM50507] ADD CONSTRAINT [CK__CM50507__POSTEDD__607251E5] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[CM50507] ADD CONSTRAINT [PKCM50507] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1CM50507] ON [dbo].[CM50507] ([POSTEDDT], [CMTrxNum], [TRXSORCE], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1CM50507] ON [dbo].[CM50507] ([POSTEDDT], [CMTrxNum], [TRXSORCE], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM50507].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM50507].[CMTrxNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM50507].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM50507].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM50507].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM50507].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM50507].[DepAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM50507].[STRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM50507].[VOIDED]'
GO
GRANT SELECT ON  [dbo].[CM50507] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM50507] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM50507] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM50507] TO [DYNGRP]
GO
