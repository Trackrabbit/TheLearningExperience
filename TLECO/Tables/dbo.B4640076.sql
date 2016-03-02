CREATE TABLE [dbo].[B4640076]
(
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_OccupancyFactor] [numeric] (19, 5) NOT NULL,
[BSSI_Leased_Space_SF] [numeric] (19, 5) NOT NULL,
[BSSI_WeighedOccupiedArea] [numeric] (19, 5) NOT NULL,
[BSSI_DaysOccupied] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640076] ADD CONSTRAINT [CK__B4640076__ENDDAT__240631E8] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640076] ADD CONSTRAINT [CK__B4640076__STRTDA__23120DAF] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640076] ADD CONSTRAINT [PKB4640076] PRIMARY KEY NONCLUSTERED  ([BSSI_PortfolioID], [BSSI_Charge_ID], [YEAR1], [LNITMSEQ], [BSSI_Tenant_Lease_Number], [LOCNCODE], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640076].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640076].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640076].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640076].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640076].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640076].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640076].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640076].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640076].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640076].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640076].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640076].[BSSI_OccupancyFactor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640076].[BSSI_Leased_Space_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640076].[BSSI_WeighedOccupiedArea]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640076].[BSSI_DaysOccupied]'
GO
GRANT SELECT ON  [dbo].[B4640076] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640076] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640076] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640076] TO [DYNGRP]
GO
