CREATE TABLE [dbo].[B4640063]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_SelectedLeaseNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SelectedSiteID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_LeasableContriArea] [numeric] (19, 5) NOT NULL,
[BSSI_OccupancyTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Range_Start] [datetime] NOT NULL,
[BSSI_Range_End] [datetime] NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[BSSI_DaysOccupied] [smallint] NOT NULL,
[BSSI_OccupancyFactor] [numeric] (19, 5) NOT NULL,
[BSSI_WeighedOccupiedArea] [numeric] (19, 5) NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640063] ADD CONSTRAINT [CK__B4640063__BSSI_R__173646AF] CHECK ((datepart(hour,[BSSI_Range_End])=(0) AND datepart(minute,[BSSI_Range_End])=(0) AND datepart(second,[BSSI_Range_End])=(0) AND datepart(millisecond,[BSSI_Range_End])=(0)))
GO
ALTER TABLE [dbo].[B4640063] ADD CONSTRAINT [CK__B4640063__BSSI_R__16422276] CHECK ((datepart(hour,[BSSI_Range_Start])=(0) AND datepart(minute,[BSSI_Range_Start])=(0) AND datepart(second,[BSSI_Range_Start])=(0) AND datepart(millisecond,[BSSI_Range_Start])=(0)))
GO
ALTER TABLE [dbo].[B4640063] ADD CONSTRAINT [CK__B4640063__From_D__182A6AE8] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640063] ADD CONSTRAINT [CK__B4640063__TODATE__191E8F21] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[B4640063] ADD CONSTRAINT [PKB4640063] PRIMARY KEY CLUSTERED  ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [LNSEQNBR], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Range_Start], [BSSI_Range_End], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640063].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640063].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640063].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640063].[BSSI_SelectedLeaseNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640063].[BSSI_SelectedSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640063].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640063].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640063].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640063].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640063].[BSSI_LeasableContriArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640063].[BSSI_OccupancyTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640063].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640063].[BSSI_Range_Start]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640063].[BSSI_Range_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640063].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640063].[TODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640063].[BSSI_DaysOccupied]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640063].[BSSI_OccupancyFactor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640063].[BSSI_WeighedOccupiedArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640063].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4640063] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640063] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640063] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640063] TO [DYNGRP]
GO
