CREATE TABLE [dbo].[B4602217]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Occupancy_Date] [datetime] NOT NULL,
[BSSI_Parking_Stall] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Bike_Stall] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Storage_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Occupancy_Type] [smallint] NOT NULL,
[BSSI_Total_Floors] [int] NOT NULL,
[BSSI_Total_Leasable_Sq_M] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Leasable_Sq_F] [numeric] (19, 5) NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_IsSupplementalAgree] [tinyint] NOT NULL,
[BSSI_Is_ProRataShare_Of_] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602217] ADD CONSTRAINT [CK__B4602217__BSSI_O__5B573229] CHECK ((datepart(hour,[BSSI_Occupancy_Date])=(0) AND datepart(minute,[BSSI_Occupancy_Date])=(0) AND datepart(second,[BSSI_Occupancy_Date])=(0) AND datepart(millisecond,[BSSI_Occupancy_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602217] ADD CONSTRAINT [PKB4602217] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602217].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602217].[BSSI_Occupancy_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602217].[BSSI_Parking_Stall]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602217].[BSSI_Bike_Stall]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602217].[BSSI_Storage_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602217].[BSSI_Occupancy_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602217].[BSSI_Total_Floors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602217].[BSSI_Total_Leasable_Sq_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602217].[BSSI_Total_Leasable_Sq_F]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602217].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602217].[BSSI_IsSupplementalAgree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602217].[BSSI_Is_ProRataShare_Of_]'
GO
GRANT SELECT ON  [dbo].[B4602217] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602217] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602217] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602217] TO [DYNGRP]
GO
