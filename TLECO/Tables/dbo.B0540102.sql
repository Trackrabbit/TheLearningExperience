CREATE TABLE [dbo].[B0540102]
(
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Units_Purchased] [numeric] (19, 5) NOT NULL,
[MJW_Original_Capital] [numeric] (19, 5) NOT NULL,
[MJW_Transfer_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Owner_Type_Code] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[IMS_Broker_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Unit_Price] [numeric] (19, 5) NOT NULL,
[MJW_Return_Capital] [numeric] (19, 5) NOT NULL,
[MJW_Adjusted_Capital] [numeric] (19, 5) NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Success] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0540102] ADD CONSTRAINT [PKB0540102] PRIMARY KEY CLUSTERED  ([VENDORID], [MJW_Offering_ID], [BSSI_Facility_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540102].[MJW_Units_Purchased]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540102].[MJW_Original_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[MJW_Transfer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[MJW_Owner_Type_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0540102].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[IMS_Broker_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540102].[MJW_Unit_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540102].[MJW_Return_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540102].[MJW_Adjusted_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540102].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0540102].[BSSI_Success]'
GO
GRANT SELECT ON  [dbo].[B0540102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0540102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0540102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0540102] TO [DYNGRP]
GO
