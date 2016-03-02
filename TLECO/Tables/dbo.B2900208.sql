CREATE TABLE [dbo].[B2900208]
(
[BSSI_ImportID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[INTEREST_AMOUNT] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900208] ADD CONSTRAINT [CK__B2900208__DATE1__24455DB3] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B2900208] ADD CONSTRAINT [PKB2900208] PRIMARY KEY NONCLUSTERED  ([BSSI_ImportID], [DATE1], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900208].[BSSI_ImportID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900208].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900208].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900208].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900208].[ERRDESCR]'
GO
GRANT SELECT ON  [dbo].[B2900208] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900208] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900208] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900208] TO [DYNGRP]
GO
