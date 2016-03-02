CREATE TABLE [dbo].[B4697010]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Assessors_Parcel_Nu] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Property_Tax_Assess] [datetime] NOT NULL,
[BSSI_Property_Tax_Payee] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Property_Tax_Due_Da] [datetime] NOT NULL,
[BSSI_Property_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Account_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Bill_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Owner_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Full_Value] [numeric] (19, 5) NOT NULL,
[BSSI_Taxable_Value] [numeric] (19, 5) NOT NULL,
[BSSI_Tax_Amount] [numeric] (19, 5) NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4697010] ADD CONSTRAINT [CK__B4697010__BSSI_P__449DEA03] CHECK ((datepart(hour,[BSSI_Property_Tax_Assess])=(0) AND datepart(minute,[BSSI_Property_Tax_Assess])=(0) AND datepart(second,[BSSI_Property_Tax_Assess])=(0) AND datepart(millisecond,[BSSI_Property_Tax_Assess])=(0)))
GO
ALTER TABLE [dbo].[B4697010] ADD CONSTRAINT [CK__B4697010__BSSI_P__45920E3C] CHECK ((datepart(hour,[BSSI_Property_Tax_Due_Da])=(0) AND datepart(minute,[BSSI_Property_Tax_Due_Da])=(0) AND datepart(second,[BSSI_Property_Tax_Due_Da])=(0) AND datepart(millisecond,[BSSI_Property_Tax_Due_Da])=(0)))
GO
ALTER TABLE [dbo].[B4697010] ADD CONSTRAINT [PKB4697010] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4697010].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4697010].[BSSI_Assessors_Parcel_Nu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4697010].[BSSI_Property_Tax_Assess]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4697010].[BSSI_Property_Tax_Payee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4697010].[BSSI_Property_Tax_Due_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4697010].[BSSI_Property_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4697010].[BSSI_Account_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4697010].[BSSI_Bill_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4697010].[BSSI_Owner_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4697010].[BSSI_Full_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4697010].[BSSI_Taxable_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4697010].[BSSI_Tax_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4697010].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[B4697010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4697010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4697010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4697010] TO [DYNGRP]
GO
