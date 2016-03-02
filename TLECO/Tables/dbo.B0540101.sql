CREATE TABLE [dbo].[B0540101]
(
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Source] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Investment_Ref] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Accept_Date] [datetime] NOT NULL,
[MJW_Admit_Date] [datetime] NOT NULL,
[IMS_Commission_Paid_Date] [datetime] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Owner_Type_Code] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Certificate_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Cancellation_Date] [datetime] NOT NULL,
[MJW_Closing_Date] [datetime] NOT NULL,
[MJW_Death_Date] [datetime] NOT NULL,
[BSSI_InvestPercent] [smallint] NOT NULL,
[MJW_Units_Purchased] [numeric] (19, 5) NOT NULL,
[MJW_Unit_Price] [numeric] (19, 5) NOT NULL,
[MJW_Original_Capital] [numeric] (19, 5) NOT NULL,
[MJW_Return_Capital] [numeric] (19, 5) NOT NULL,
[MJW_Transfer_Date] [datetime] NOT NULL,
[MJW_Transfer_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Redemption_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_Broker_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_With_Holding_Account_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_With_Holding_Account_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_With_Holding_Account_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_With_Holding_Account_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Adjusted_Capital] [numeric] (19, 5) NOT NULL,
[BSSI_Reinvest_CB] [tinyint] NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0540101] ADD CONSTRAINT [CK__B0540101__IMS_Co__429EFC4A] CHECK ((datepart(hour,[IMS_Commission_Paid_Date])=(0) AND datepart(minute,[IMS_Commission_Paid_Date])=(0) AND datepart(second,[IMS_Commission_Paid_Date])=(0) AND datepart(millisecond,[IMS_Commission_Paid_Date])=(0)))
GO
ALTER TABLE [dbo].[B0540101] ADD CONSTRAINT [CK__B0540101__MJW_Ac__40B6B3D8] CHECK ((datepart(hour,[MJW_Accept_Date])=(0) AND datepart(minute,[MJW_Accept_Date])=(0) AND datepart(second,[MJW_Accept_Date])=(0) AND datepart(millisecond,[MJW_Accept_Date])=(0)))
GO
ALTER TABLE [dbo].[B0540101] ADD CONSTRAINT [CK__B0540101__MJW_Ad__41AAD811] CHECK ((datepart(hour,[MJW_Admit_Date])=(0) AND datepart(minute,[MJW_Admit_Date])=(0) AND datepart(second,[MJW_Admit_Date])=(0) AND datepart(millisecond,[MJW_Admit_Date])=(0)))
GO
ALTER TABLE [dbo].[B0540101] ADD CONSTRAINT [CK__B0540101__MJW_Ca__43932083] CHECK ((datepart(hour,[MJW_Cancellation_Date])=(0) AND datepart(minute,[MJW_Cancellation_Date])=(0) AND datepart(second,[MJW_Cancellation_Date])=(0) AND datepart(millisecond,[MJW_Cancellation_Date])=(0)))
GO
ALTER TABLE [dbo].[B0540101] ADD CONSTRAINT [CK__B0540101__MJW_Cl__448744BC] CHECK ((datepart(hour,[MJW_Closing_Date])=(0) AND datepart(minute,[MJW_Closing_Date])=(0) AND datepart(second,[MJW_Closing_Date])=(0) AND datepart(millisecond,[MJW_Closing_Date])=(0)))
GO
ALTER TABLE [dbo].[B0540101] ADD CONSTRAINT [CK__B0540101__MJW_De__457B68F5] CHECK ((datepart(hour,[MJW_Death_Date])=(0) AND datepart(minute,[MJW_Death_Date])=(0) AND datepart(second,[MJW_Death_Date])=(0) AND datepart(millisecond,[MJW_Death_Date])=(0)))
GO
ALTER TABLE [dbo].[B0540101] ADD CONSTRAINT [CK__B0540101__MJW_Tr__466F8D2E] CHECK ((datepart(hour,[MJW_Transfer_Date])=(0) AND datepart(minute,[MJW_Transfer_Date])=(0) AND datepart(second,[MJW_Transfer_Date])=(0) AND datepart(millisecond,[MJW_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[B0540101] ADD CONSTRAINT [PKB0540101] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[MJW_Source]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[BSSI_Investment_Ref]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0540101].[MJW_Accept_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0540101].[MJW_Admit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0540101].[IMS_Commission_Paid_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[MJW_Owner_Type_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[MJW_Certificate_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0540101].[MJW_Cancellation_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0540101].[MJW_Closing_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0540101].[MJW_Death_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0540101].[BSSI_InvestPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540101].[MJW_Units_Purchased]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540101].[MJW_Unit_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540101].[MJW_Original_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540101].[MJW_Return_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0540101].[MJW_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[MJW_Transfer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[MJW_Redemption_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[IMS_Broker_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[IMS_With_Holding_Account_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[IMS_With_Holding_Account_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[IMS_With_Holding_Account_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[IMS_With_Holding_Account_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540101].[MJW_Adjusted_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0540101].[BSSI_Reinvest_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540101].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540101].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0540101].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0540101].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B0540101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0540101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0540101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0540101] TO [DYNGRP]
GO
