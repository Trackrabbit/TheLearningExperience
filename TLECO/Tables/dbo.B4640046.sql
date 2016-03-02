CREATE TABLE [dbo].[B4640046]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[BSSI_SelectedLeaseNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SelectedSiteID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_ContributionArea] [numeric] (19, 5) NOT NULL,
[BSSI_OccupancyTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DaysOccupied] [smallint] NOT NULL,
[BSSI_DaysInYear] [numeric] (19, 5) NOT NULL,
[BSSI_Factor] [numeric] (19, 5) NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Range_Start] [datetime] NOT NULL,
[BSSI_Range_End] [datetime] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_WeighedOccupiedArea] [numeric] (19, 5) NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640046] ADD CONSTRAINT [CK__B4640046__BSSI_R__506EC40B] CHECK ((datepart(hour,[BSSI_Range_End])=(0) AND datepart(minute,[BSSI_Range_End])=(0) AND datepart(second,[BSSI_Range_End])=(0) AND datepart(millisecond,[BSSI_Range_End])=(0)))
GO
ALTER TABLE [dbo].[B4640046] ADD CONSTRAINT [CK__B4640046__BSSI_R__4F7A9FD2] CHECK ((datepart(hour,[BSSI_Range_Start])=(0) AND datepart(minute,[BSSI_Range_Start])=(0) AND datepart(second,[BSSI_Range_Start])=(0) AND datepart(millisecond,[BSSI_Range_Start])=(0)))
GO
ALTER TABLE [dbo].[B4640046] ADD CONSTRAINT [CK__B4640046__ENDDAT__52570C7D] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640046] ADD CONSTRAINT [CK__B4640046__STRTDA__5162E844] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640046] ADD CONSTRAINT [PKB4640046] PRIMARY KEY CLUSTERED  ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Range_Start], [BSSI_Range_End], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640046].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[BSSI_SelectedLeaseNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[BSSI_SelectedSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640046].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640046].[BSSI_ContributionArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[BSSI_OccupancyTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640046].[BSSI_DaysOccupied]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640046].[BSSI_DaysInYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640046].[BSSI_Factor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640046].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640046].[BSSI_Range_Start]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640046].[BSSI_Range_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640046].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640046].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640046].[BSSI_WeighedOccupiedArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640046].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4640046] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640046] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640046] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640046] TO [DYNGRP]
GO
