CREATE TABLE [dbo].[B4640026]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_BreakPointAmt] [numeric] (19, 5) NOT NULL,
[BSSI_BreakPointPercent] [numeric] (19, 5) NOT NULL,
[BSSI_PayablesAmount] [numeric] (19, 5) NOT NULL,
[BSSI_AmountDue] [numeric] (19, 5) NOT NULL,
[BSSI_BilledAmount] [numeric] (19, 5) NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_SalesStartDate] [datetime] NOT NULL,
[BSSI_SalesEndDate] [datetime] NOT NULL,
[BSSI_ExcessSales] [numeric] (19, 5) NOT NULL,
[BSSI_AppliedSales] [numeric] (19, 5) NOT NULL,
[BSSI_DaysInPeriod] [numeric] (19, 5) NOT NULL,
[BSSI_DaysInYear] [numeric] (19, 5) NOT NULL,
[BSSI_Factor] [numeric] (19, 5) NOT NULL,
[BSSI_BreakpointInPeriod] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640026] ADD CONSTRAINT [CK__B4640026__BSSI_S__70476217] CHECK ((datepart(hour,[BSSI_SalesEndDate])=(0) AND datepart(minute,[BSSI_SalesEndDate])=(0) AND datepart(second,[BSSI_SalesEndDate])=(0) AND datepart(millisecond,[BSSI_SalesEndDate])=(0)))
GO
ALTER TABLE [dbo].[B4640026] ADD CONSTRAINT [CK__B4640026__BSSI_S__6F533DDE] CHECK ((datepart(hour,[BSSI_SalesStartDate])=(0) AND datepart(minute,[BSSI_SalesStartDate])=(0) AND datepart(second,[BSSI_SalesStartDate])=(0) AND datepart(millisecond,[BSSI_SalesStartDate])=(0)))
GO
ALTER TABLE [dbo].[B4640026] ADD CONSTRAINT [PKB4640026] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640026].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640026].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640026].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640026].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640026].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640026].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640026].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640026].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640026].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_BreakPointAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_BreakPointPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_PayablesAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_AmountDue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_BilledAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640026].[BSSI_SalesStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640026].[BSSI_SalesEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_ExcessSales]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_AppliedSales]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_DaysInPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_DaysInYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_Factor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640026].[BSSI_BreakpointInPeriod]'
GO
GRANT SELECT ON  [dbo].[B4640026] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640026] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640026] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640026] TO [DYNGRP]
GO
