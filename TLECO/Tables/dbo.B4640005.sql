CREATE TABLE [dbo].[B4640005]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Term] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_CalculationMethod] [smallint] NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_NaturalBreakPnt] [numeric] (19, 5) NOT NULL,
[BSSI_LicenseFeePerct] [numeric] (19, 5) NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640005] ADD CONSTRAINT [CK__B4640005__ENDDAT__7C583341] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640005] ADD CONSTRAINT [CK__B4640005__STRTDA__7B640F08] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640005] ADD CONSTRAINT [PKB4640005] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640005] ON [dbo].[B4640005] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640005].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640005].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640005].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640005].[BSSI_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640005].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640005].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640005].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640005].[BSSI_CalculationMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640005].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640005].[BSSI_NaturalBreakPnt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640005].[BSSI_LicenseFeePerct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640005].[BSSI_Billing_Frequency]'
GO
GRANT SELECT ON  [dbo].[B4640005] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640005] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640005] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640005] TO [DYNGRP]
GO
