CREATE TABLE [dbo].[B4640053]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Leased_Space_SF] [numeric] (19, 5) NOT NULL,
[BSSI_ExcludeFromGLA] [tinyint] NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[BSSI_DaysOccupied] [smallint] NOT NULL,
[BSSI_OccupancyFactor] [numeric] (19, 5) NOT NULL,
[BSSI_WeighedOccupiedArea] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640053] ADD CONSTRAINT [CK__B4640053__From_D__0675CF01] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640053] ADD CONSTRAINT [CK__B4640053__TODATE__0769F33A] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[B4640053] ADD CONSTRAINT [PKB4640053] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [LOCNCODE], [From_Date], [TODATE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640053].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640053].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640053].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640053].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640053].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640053].[BSSI_Leased_Space_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640053].[BSSI_ExcludeFromGLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640053].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640053].[TODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640053].[BSSI_DaysOccupied]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640053].[BSSI_OccupancyFactor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640053].[BSSI_WeighedOccupiedArea]'
GO
GRANT SELECT ON  [dbo].[B4640053] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640053] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640053] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640053] TO [DYNGRP]
GO
