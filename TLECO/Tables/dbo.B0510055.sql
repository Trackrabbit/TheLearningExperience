CREATE TABLE [dbo].[B0510055]
(
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Source] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Admit_Date] [datetime] NOT NULL,
[MJW_Accept_Date] [datetime] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Owner_Type_Code] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Certificate_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Cancellation_Date] [datetime] NOT NULL,
[MJW_Closing_Date] [datetime] NOT NULL,
[MJW_Death_Date] [datetime] NOT NULL,
[MJW_Units_Purchased] [numeric] (19, 5) NOT NULL,
[MJW_Unit_Price] [numeric] (19, 5) NOT NULL,
[MJW_Original_Capital] [numeric] (19, 5) NOT NULL,
[MJW_Return_Capital] [numeric] (19, 5) NOT NULL,
[MJW_Transfer_Date] [datetime] NOT NULL,
[MJW_Transfer_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Redemption_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_Commission_Paid_Date] [datetime] NOT NULL,
[IMS_Broker_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_With_Holding_Account_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_With_Holding_Account_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_With_Holding_Account_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_With_Holding_Account_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Adjusted_Capital] [numeric] (19, 5) NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Reinvest_CB] [tinyint] NOT NULL,
[BSSI_Temp_Field] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[VCHNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestBearing] [smallint] NOT NULL,
[BSSI_LastRevaluationAmou] [numeric] (19, 5) NOT NULL,
[MJW_Units_Sold] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510055] ADD CONSTRAINT [CK__B0510055__IMS_Co__15D742CB] CHECK ((datepart(hour,[IMS_Commission_Paid_Date])=(0) AND datepart(minute,[IMS_Commission_Paid_Date])=(0) AND datepart(second,[IMS_Commission_Paid_Date])=(0) AND datepart(millisecond,[IMS_Commission_Paid_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510055] ADD CONSTRAINT [CK__B0510055__MJW_Ac__11128DAE] CHECK ((datepart(hour,[MJW_Accept_Date])=(0) AND datepart(minute,[MJW_Accept_Date])=(0) AND datepart(second,[MJW_Accept_Date])=(0) AND datepart(millisecond,[MJW_Accept_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510055] ADD CONSTRAINT [CK__B0510055__MJW_Ad__101E6975] CHECK ((datepart(hour,[MJW_Admit_Date])=(0) AND datepart(minute,[MJW_Admit_Date])=(0) AND datepart(second,[MJW_Admit_Date])=(0) AND datepart(millisecond,[MJW_Admit_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510055] ADD CONSTRAINT [CK__B0510055__MJW_Ca__1206B1E7] CHECK ((datepart(hour,[MJW_Cancellation_Date])=(0) AND datepart(minute,[MJW_Cancellation_Date])=(0) AND datepart(second,[MJW_Cancellation_Date])=(0) AND datepart(millisecond,[MJW_Cancellation_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510055] ADD CONSTRAINT [CK__B0510055__MJW_Cl__12FAD620] CHECK ((datepart(hour,[MJW_Closing_Date])=(0) AND datepart(minute,[MJW_Closing_Date])=(0) AND datepart(second,[MJW_Closing_Date])=(0) AND datepart(millisecond,[MJW_Closing_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510055] ADD CONSTRAINT [CK__B0510055__MJW_De__13EEFA59] CHECK ((datepart(hour,[MJW_Death_Date])=(0) AND datepart(minute,[MJW_Death_Date])=(0) AND datepart(second,[MJW_Death_Date])=(0) AND datepart(millisecond,[MJW_Death_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510055] ADD CONSTRAINT [CK__B0510055__MJW_Tr__14E31E92] CHECK ((datepart(hour,[MJW_Transfer_Date])=(0) AND datepart(minute,[MJW_Transfer_Date])=(0) AND datepart(second,[MJW_Transfer_Date])=(0) AND datepart(millisecond,[MJW_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510055] ADD CONSTRAINT [PKB0510055] PRIMARY KEY CLUSTERED  ([MJW_Investment_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B0510055] ON [dbo].[B0510055] ([MJW_Admit_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B0510055] ON [dbo].[B0510055] ([MJW_Cancellation_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11B0510055] ON [dbo].[B0510055] ([MJW_Certificate_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B0510055] ON [dbo].[B0510055] ([MJW_Offering_ID], [MJW_Series_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12B0510055] ON [dbo].[B0510055] ([MJW_Offering_ID], [MJW_Series_ID], [MJW_Admit_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B0510055] ON [dbo].[B0510055] ([MJW_Offering_ID], [MJW_Series_ID], [MJW_Admit_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B0510055] ON [dbo].[B0510055] ([MJW_Offering_ID], [MJW_Series_ID], [MJW_Closing_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10B0510055] ON [dbo].[B0510055] ([MJW_Offering_ID], [MJW_Series_ID], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9B0510055] ON [dbo].[B0510055] ([MJW_Series_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B0510055] ON [dbo].[B0510055] ([MJW_Transfer_Number], [MJW_Transfer_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13B0510055] ON [dbo].[B0510055] ([SLPRSNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510055] ON [dbo].[B0510055] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[MJW_Source]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510055].[MJW_Admit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510055].[MJW_Accept_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[MJW_Owner_Type_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[MJW_Certificate_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510055].[MJW_Cancellation_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510055].[MJW_Closing_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510055].[MJW_Death_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510055].[MJW_Units_Purchased]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510055].[MJW_Unit_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510055].[MJW_Original_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510055].[MJW_Return_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510055].[MJW_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[MJW_Transfer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[MJW_Redemption_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510055].[IMS_Commission_Paid_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[IMS_Broker_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[IMS_With_Holding_Account_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[IMS_With_Holding_Account_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[IMS_With_Holding_Account_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[IMS_With_Holding_Account_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510055].[MJW_Adjusted_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510055].[BSSI_Reinvest_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[BSSI_Temp_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[RMDNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510055].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[VCHNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510055].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510055].[BSSI_InvestBearing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510055].[BSSI_LastRevaluationAmou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510055].[MJW_Units_Sold]'
GO
GRANT SELECT ON  [dbo].[B0510055] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510055] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510055] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510055] TO [DYNGRP]
GO
