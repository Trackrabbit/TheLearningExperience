CREATE TABLE [dbo].[B0510066]
(
[MJW_Transfer_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Transfer_Date] [datetime] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[MJW_Transfer_Reason] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Transfer_From_Invest] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Transfer_To_Investor] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Transfer_Type] [smallint] NOT NULL,
[MJW_Death_Date] [datetime] NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510066] ADD CONSTRAINT [CK__B0510066__MJW_De__3881608A] CHECK ((datepart(hour,[MJW_Death_Date])=(0) AND datepart(minute,[MJW_Death_Date])=(0) AND datepart(second,[MJW_Death_Date])=(0) AND datepart(millisecond,[MJW_Death_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510066] ADD CONSTRAINT [CK__B0510066__MJW_Tr__378D3C51] CHECK ((datepart(hour,[MJW_Transfer_Date])=(0) AND datepart(minute,[MJW_Transfer_Date])=(0) AND datepart(second,[MJW_Transfer_Date])=(0) AND datepart(millisecond,[MJW_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510066] ADD CONSTRAINT [PKB0510066] PRIMARY KEY CLUSTERED  ([MJW_Transfer_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510066].[MJW_Transfer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510066].[MJW_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510066].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510066].[MJW_Transfer_Reason]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510066].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510066].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510066].[MJW_Transfer_From_Invest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510066].[MJW_Transfer_To_Investor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510066].[MJW_Transfer_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510066].[MJW_Death_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510066].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510066].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510066] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510066] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510066] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510066] TO [DYNGRP]
GO
