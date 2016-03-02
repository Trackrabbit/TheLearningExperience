CREATE TABLE [dbo].[B0510065]
(
[MJW_Transfer_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Transfer_Date] [datetime] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Certificate_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Unit_Price] [numeric] (19, 5) NOT NULL,
[MJW_Units_Purchased] [numeric] (19, 5) NOT NULL,
[MJW_Transfer_To_Investor] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Units_Transfered] [numeric] (19, 5) NOT NULL,
[MJW_Accept_Date] [datetime] NOT NULL,
[MJW_Admit_Date] [datetime] NOT NULL,
[MJW_Transfer_Price] [numeric] (19, 5) NOT NULL,
[MJW_Transfer_Reason] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_NewInvestmentNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_NewCertNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510065] ADD CONSTRAINT [CK__B0510065__MJW_Ac__11679369] CHECK ((datepart(hour,[MJW_Accept_Date])=(0) AND datepart(minute,[MJW_Accept_Date])=(0) AND datepart(second,[MJW_Accept_Date])=(0) AND datepart(millisecond,[MJW_Accept_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510065] ADD CONSTRAINT [CK__B0510065__MJW_Ad__125BB7A2] CHECK ((datepart(hour,[MJW_Admit_Date])=(0) AND datepart(minute,[MJW_Admit_Date])=(0) AND datepart(second,[MJW_Admit_Date])=(0) AND datepart(millisecond,[MJW_Admit_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510065] ADD CONSTRAINT [CK__B0510065__MJW_Tr__10736F30] CHECK ((datepart(hour,[MJW_Transfer_Date])=(0) AND datepart(minute,[MJW_Transfer_Date])=(0) AND datepart(second,[MJW_Transfer_Date])=(0) AND datepart(millisecond,[MJW_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510065] ADD CONSTRAINT [PKB0510065] PRIMARY KEY CLUSTERED  ([MJW_Transfer_Number], [MJW_Investment_Number], [MJW_Transfer_To_Investor]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510065] ON [dbo].[B0510065] ([BSSI_NewCertNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[MJW_Transfer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510065].[MJW_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510065].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[MJW_Certificate_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510065].[MJW_Unit_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510065].[MJW_Units_Purchased]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[MJW_Transfer_To_Investor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510065].[MJW_Units_Transfered]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510065].[MJW_Accept_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510065].[MJW_Admit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510065].[MJW_Transfer_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[MJW_Transfer_Reason]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[MJW_NewInvestmentNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510065].[BSSI_NewCertNum]'
GO
GRANT SELECT ON  [dbo].[B0510065] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510065] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510065] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510065] TO [DYNGRP]
GO
