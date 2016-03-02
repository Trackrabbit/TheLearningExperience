CREATE TABLE [dbo].[B0510030]
(
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[MJW_Series_Close_Date] [datetime] NOT NULL,
[MJW_Units_Offered] [numeric] (19, 5) NOT NULL,
[MJW_Unit_Price] [numeric] (19, 5) NOT NULL,
[MJW_Liquidation_Market_P] [numeric] (19, 5) NOT NULL,
[MJW_Units_Sold] [numeric] (19, 5) NOT NULL,
[MJW_Liquidation_Date] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510030] ADD CONSTRAINT [CK__B0510030__MJW_Li__60F96638] CHECK ((datepart(hour,[MJW_Liquidation_Date])=(0) AND datepart(minute,[MJW_Liquidation_Date])=(0) AND datepart(second,[MJW_Liquidation_Date])=(0) AND datepart(millisecond,[MJW_Liquidation_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510030] ADD CONSTRAINT [CK__B0510030__MJW_Se__600541FF] CHECK ((datepart(hour,[MJW_Series_Close_Date])=(0) AND datepart(minute,[MJW_Series_Close_Date])=(0) AND datepart(second,[MJW_Series_Close_Date])=(0) AND datepart(millisecond,[MJW_Series_Close_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510030] ADD CONSTRAINT [CK__B0510030__STRTDA__5F111DC6] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B0510030] ADD CONSTRAINT [PKB0510030] PRIMARY KEY CLUSTERED  ([MJW_Offering_ID], [MJW_Series_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510030] ON [dbo].[B0510030] ([MJW_Series_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510030].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510030].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510030].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510030].[MJW_Series_Close_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510030].[MJW_Units_Offered]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510030].[MJW_Unit_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510030].[MJW_Liquidation_Market_P]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510030].[MJW_Units_Sold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510030].[MJW_Liquidation_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510030].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510030].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B0510030] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510030] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510030] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510030] TO [DYNGRP]
GO
