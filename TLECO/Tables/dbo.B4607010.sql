CREATE TABLE [dbo].[B4607010]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Assessors_Parcel_Nu] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Property_Tax_Payee] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Property_Tax_Assess] [datetime] NOT NULL,
[BSSI_Property_Tax_Due_Da] [datetime] NOT NULL,
[BSSI_Account_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Bill_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Owner_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Full_Value] [numeric] (19, 5) NOT NULL,
[BSSI_Taxable_Value] [numeric] (19, 5) NOT NULL,
[BSSI_Property_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tax_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Dummy_Field] [tinyint] NOT NULL,
[BSSI_County_Multi] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Pay_Landlord_Taxes] [smallint] NOT NULL,
[BSSI_Tax_Due_On_Property] [numeric] (19, 5) NOT NULL,
[BSSI_Owned_Land] [smallint] NOT NULL,
[BSSI_Shelter_On_Site] [smallint] NOT NULL,
[BSSI_First_Year_Tax_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Second_Year_Tax_Amt] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4607010] ADD CONSTRAINT [CK__B4607010__BSSI_P__4A41B4C0] CHECK ((datepart(hour,[BSSI_Property_Tax_Assess])=(0) AND datepart(minute,[BSSI_Property_Tax_Assess])=(0) AND datepart(second,[BSSI_Property_Tax_Assess])=(0) AND datepart(millisecond,[BSSI_Property_Tax_Assess])=(0)))
GO
ALTER TABLE [dbo].[B4607010] ADD CONSTRAINT [CK__B4607010__BSSI_P__4B35D8F9] CHECK ((datepart(hour,[BSSI_Property_Tax_Due_Da])=(0) AND datepart(minute,[BSSI_Property_Tax_Due_Da])=(0) AND datepart(second,[BSSI_Property_Tax_Due_Da])=(0) AND datepart(millisecond,[BSSI_Property_Tax_Due_Da])=(0)))
GO
ALTER TABLE [dbo].[B4607010] ADD CONSTRAINT [PKB4607010] PRIMARY KEY NONCLUSTERED  ([LOCNCODE], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607010].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4607010].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607010].[BSSI_Assessors_Parcel_Nu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607010].[BSSI_Property_Tax_Payee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4607010].[BSSI_Property_Tax_Assess]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4607010].[BSSI_Property_Tax_Due_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607010].[BSSI_Account_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607010].[BSSI_Bill_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607010].[BSSI_Owner_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607010].[BSSI_Full_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607010].[BSSI_Taxable_Value]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607010].[BSSI_Property_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607010].[BSSI_Tax_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4607010].[BSSI_Dummy_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607010].[BSSI_County_Multi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4607010].[BSSI_Pay_Landlord_Taxes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607010].[BSSI_Tax_Due_On_Property]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4607010].[BSSI_Owned_Land]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4607010].[BSSI_Shelter_On_Site]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607010].[BSSI_First_Year_Tax_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607010].[BSSI_Second_Year_Tax_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607010].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4607010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4607010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4607010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4607010] TO [DYNGRP]
GO
