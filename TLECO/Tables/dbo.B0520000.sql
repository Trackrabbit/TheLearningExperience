CREATE TABLE [dbo].[B0520000]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[BSSI_Units_Year_End] [numeric] (19, 5) NOT NULL,
[BSSI_Begining_Capital] [numeric] (19, 5) NOT NULL,
[BSSI_Capital_Contrib] [numeric] (19, 5) NOT NULL,
[BSSI_Withdrawals] [numeric] (19, 5) NOT NULL,
[BSSI_Income] [numeric] (19, 5) NOT NULL,
[BSSI_Ending_Capital] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0520000] ADD CONSTRAINT [PKB0520000] PRIMARY KEY NONCLUSTERED  ([VENDORID], [BSSI_Investment_Number], [YEAR1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0520000].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0520000].[BSSI_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0520000].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0520000].[BSSI_Units_Year_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0520000].[BSSI_Begining_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0520000].[BSSI_Capital_Contrib]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0520000].[BSSI_Withdrawals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0520000].[BSSI_Income]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0520000].[BSSI_Ending_Capital]'
GO
GRANT SELECT ON  [dbo].[B0520000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0520000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0520000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0520000] TO [DYNGRP]
GO
