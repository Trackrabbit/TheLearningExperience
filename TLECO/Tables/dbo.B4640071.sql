CREATE TABLE [dbo].[B4640071]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_InteriorPercent] [numeric] (19, 5) NOT NULL,
[BSSI_InteriorExpense] [numeric] (19, 5) NOT NULL,
[BSSI_ExteriorPercent] [numeric] (19, 5) NOT NULL,
[BSSI_ExteriorExpense] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640071] ADD CONSTRAINT [PKB4640071] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640071] ON [dbo].[B4640071] ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [ACTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640071].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640071].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640071].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640071].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640071].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640071].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640071].[BSSI_InteriorPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640071].[BSSI_InteriorExpense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640071].[BSSI_ExteriorPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640071].[BSSI_ExteriorExpense]'
GO
GRANT SELECT ON  [dbo].[B4640071] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640071] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640071] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640071] TO [DYNGRP]
GO
