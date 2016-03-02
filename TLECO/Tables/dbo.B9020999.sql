CREATE TABLE [dbo].[B9020999]
(
[RMPERDSC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRINCIPAL_BALANCE] [numeric] (19, 5) NOT NULL,
[PRINCIPAL_AMOUNT] [numeric] (19, 5) NOT NULL,
[INTEREST_AMOUNT] [numeric] (19, 5) NOT NULL,
[BSSI_ChargeAmt] [numeric] (19, 5) NOT NULL,
[AGPERAMT_1] [numeric] (19, 5) NOT NULL,
[AGPERAMT_2] [numeric] (19, 5) NOT NULL,
[AGPERAMT_3] [numeric] (19, 5) NOT NULL,
[AGPERAMT_4] [numeric] (19, 5) NOT NULL,
[AGPERAMT_5] [numeric] (19, 5) NOT NULL,
[AGPERAMT_6] [numeric] (19, 5) NOT NULL,
[AGPERAMT_7] [numeric] (19, 5) NOT NULL,
[Count1] [int] NOT NULL,
[INDEX1] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B9020999] ADD CONSTRAINT [PKB9020999] PRIMARY KEY NONCLUSTERED  ([RMPERDSC], [USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B9020999] ON [dbo].[B9020999] ([INDEX1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9020999].[RMPERDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[PRINCIPAL_BALANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[BSSI_ChargeAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[AGPERAMT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[AGPERAMT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[AGPERAMT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[AGPERAMT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[AGPERAMT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[AGPERAMT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9020999].[AGPERAMT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9020999].[Count1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9020999].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9020999].[USERID]'
GO
GRANT SELECT ON  [dbo].[B9020999] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B9020999] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B9020999] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B9020999] TO [DYNGRP]
GO
