CREATE TABLE [dbo].[B4640044]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[BSSI_SelectedLeaseNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SelectedSiteID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_ContributionAmount] [numeric] (19, 5) NOT NULL,
[BSSI_OccupancyTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Range_Start] [datetime] NOT NULL,
[BSSI_Range_End] [datetime] NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640044] ADD CONSTRAINT [CK__B4640044__BSSI_R__41618AA5] CHECK ((datepart(hour,[BSSI_Range_End])=(0) AND datepart(minute,[BSSI_Range_End])=(0) AND datepart(second,[BSSI_Range_End])=(0) AND datepart(millisecond,[BSSI_Range_End])=(0)))
GO
ALTER TABLE [dbo].[B4640044] ADD CONSTRAINT [CK__B4640044__BSSI_R__406D666C] CHECK ((datepart(hour,[BSSI_Range_Start])=(0) AND datepart(minute,[BSSI_Range_Start])=(0) AND datepart(second,[BSSI_Range_Start])=(0) AND datepart(millisecond,[BSSI_Range_Start])=(0)))
GO
ALTER TABLE [dbo].[B4640044] ADD CONSTRAINT [CK__B4640044__From_D__4255AEDE] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640044] ADD CONSTRAINT [CK__B4640044__TODATE__4349D317] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[B4640044] ADD CONSTRAINT [PKB4640044] PRIMARY KEY CLUSTERED  ([BSSI_PortfolioID], [YEAR1], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [BSSI_Range_Start], [BSSI_Range_End], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640044] ON [dbo].[B4640044] ([BSSI_PortfolioID], [YEAR1], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [From_Date], [TODATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640044].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[BSSI_SelectedLeaseNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[BSSI_SelectedSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640044].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640044].[BSSI_ContributionAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[BSSI_OccupancyTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640044].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640044].[BSSI_Range_Start]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640044].[BSSI_Range_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640044].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640044].[TODATE]'
GO
GRANT SELECT ON  [dbo].[B4640044] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640044] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640044] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640044] TO [DYNGRP]
GO
