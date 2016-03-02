CREATE TABLE [dbo].[B0510047]
(
[MJW_Redemption_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investor_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Redemption_Type] [smallint] NOT NULL,
[MJW_Units_Redeemed] [numeric] (19, 5) NOT NULL,
[MJW_Return_Capital] [numeric] (19, 5) NOT NULL,
[MJW_Redemption_Date] [datetime] NOT NULL,
[MJW_FEIN_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Certificate_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Redemption_Amount] [numeric] (19, 5) NOT NULL,
[MJW_NewInvestmentNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510047] ADD CONSTRAINT [CK__B0510047__MJW_Re__3D7B1FD1] CHECK ((datepart(hour,[MJW_Redemption_Date])=(0) AND datepart(minute,[MJW_Redemption_Date])=(0) AND datepart(second,[MJW_Redemption_Date])=(0) AND datepart(millisecond,[MJW_Redemption_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510047] ADD CONSTRAINT [PKB0510047] PRIMARY KEY NONCLUSTERED  ([MJW_Redemption_Number], [MJW_Investment_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510047].[MJW_Redemption_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510047].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510047].[MJW_Investor_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510047].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510047].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510047].[MJW_Redemption_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510047].[MJW_Units_Redeemed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510047].[MJW_Return_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510047].[MJW_Redemption_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510047].[MJW_FEIN_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510047].[MJW_Certificate_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510047].[MJW_Redemption_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510047].[MJW_NewInvestmentNumber]'
GO
GRANT SELECT ON  [dbo].[B0510047] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510047] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510047] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510047] TO [DYNGRP]
GO
