CREATE TABLE [dbo].[B4640079]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
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
ALTER TABLE [dbo].[B4640079] ADD CONSTRAINT [CK__B4640079__BSSI_R__61CE5A37] CHECK ((datepart(hour,[BSSI_Range_End])=(0) AND datepart(minute,[BSSI_Range_End])=(0) AND datepart(second,[BSSI_Range_End])=(0) AND datepart(millisecond,[BSSI_Range_End])=(0)))
GO
ALTER TABLE [dbo].[B4640079] ADD CONSTRAINT [CK__B4640079__BSSI_R__60DA35FE] CHECK ((datepart(hour,[BSSI_Range_Start])=(0) AND datepart(minute,[BSSI_Range_Start])=(0) AND datepart(second,[BSSI_Range_Start])=(0) AND datepart(millisecond,[BSSI_Range_Start])=(0)))
GO
ALTER TABLE [dbo].[B4640079] ADD CONSTRAINT [CK__B4640079__From_D__62C27E70] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640079] ADD CONSTRAINT [CK__B4640079__TODATE__63B6A2A9] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[B4640079] ADD CONSTRAINT [PKB4640079] PRIMARY KEY CLUSTERED  ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [LNSEQNBR], [BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Range_Start], [BSSI_Range_End], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640079] ON [dbo].[B4640079] ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [LNSEQNBR], [BSSI_Tenant_Lease_Number], [LOCNCODE], [From_Date], [TODATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640079].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640079].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[BSSI_SelectedLeaseNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[BSSI_SelectedSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640079].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640079].[BSSI_ContributionAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[BSSI_OccupancyTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640079].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640079].[BSSI_Range_Start]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640079].[BSSI_Range_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640079].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640079].[TODATE]'
GO
GRANT SELECT ON  [dbo].[B4640079] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640079] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640079] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640079] TO [DYNGRP]
GO
