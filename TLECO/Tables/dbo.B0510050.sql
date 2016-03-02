CREATE TABLE [dbo].[B0510050]
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
[MJW_Units_Sold] [numeric] (19, 5) NOT NULL,
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
[BSSI_InvestCategoryID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestmentType] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestBearing] [smallint] NOT NULL,
[BSSI_AccrualsAcctIdx] [int] NOT NULL,
[REALGAIN] [int] NOT NULL,
[REALLOSS] [int] NOT NULL,
[UNRLGAIN] [int] NOT NULL,
[UNRLLOSS] [int] NOT NULL,
[OFFINDX] [int] NOT NULL,
[BSSI_LastRevaluationAmou] [numeric] (19, 5) NOT NULL,
[SCHEDULE_INT_TYPE1] [smallint] NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REC_ACCT_IDX] [int] NOT NULL,
[INT_INCOME_ACCT_IDX] [int] NOT NULL,
[ORIG_DOC_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REC_OFFSET_ACCT_IDX] [int] NOT NULL,
[PAY_ACCT_IDX] [int] NOT NULL,
[PAY_OFFSET_ACCT_IDX] [int] NOT NULL,
[INT_EXP_ACCT_IDX] [int] NOT NULL,
[RMDNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_IntrIncAccrAcctIdx] [int] NOT NULL,
[BSSI_IntrExpAccrAcctIdx] [int] NOT NULL,
[BSSI_AccrdIntrIncAcctIdx] [int] NOT NULL,
[BSSI_AccrdIntrExpAcctIdx] [int] NOT NULL,
[BSSI_Investor_AP_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Investor_AR_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestOrFund] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510050] ADD CONSTRAINT [CK__B0510050__IMS_Co__114797D8] CHECK ((datepart(hour,[IMS_Commission_Paid_Date])=(0) AND datepart(minute,[IMS_Commission_Paid_Date])=(0) AND datepart(second,[IMS_Commission_Paid_Date])=(0) AND datepart(millisecond,[IMS_Commission_Paid_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510050] ADD CONSTRAINT [CK__B0510050__MJW_Ac__0F5F4F66] CHECK ((datepart(hour,[MJW_Accept_Date])=(0) AND datepart(minute,[MJW_Accept_Date])=(0) AND datepart(second,[MJW_Accept_Date])=(0) AND datepart(millisecond,[MJW_Accept_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510050] ADD CONSTRAINT [CK__B0510050__MJW_Ad__1053739F] CHECK ((datepart(hour,[MJW_Admit_Date])=(0) AND datepart(minute,[MJW_Admit_Date])=(0) AND datepart(second,[MJW_Admit_Date])=(0) AND datepart(millisecond,[MJW_Admit_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510050] ADD CONSTRAINT [CK__B0510050__MJW_Ca__123BBC11] CHECK ((datepart(hour,[MJW_Cancellation_Date])=(0) AND datepart(minute,[MJW_Cancellation_Date])=(0) AND datepart(second,[MJW_Cancellation_Date])=(0) AND datepart(millisecond,[MJW_Cancellation_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510050] ADD CONSTRAINT [CK__B0510050__MJW_Cl__132FE04A] CHECK ((datepart(hour,[MJW_Closing_Date])=(0) AND datepart(minute,[MJW_Closing_Date])=(0) AND datepart(second,[MJW_Closing_Date])=(0) AND datepart(millisecond,[MJW_Closing_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510050] ADD CONSTRAINT [CK__B0510050__MJW_De__14240483] CHECK ((datepart(hour,[MJW_Death_Date])=(0) AND datepart(minute,[MJW_Death_Date])=(0) AND datepart(second,[MJW_Death_Date])=(0) AND datepart(millisecond,[MJW_Death_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510050] ADD CONSTRAINT [CK__B0510050__MJW_Tr__151828BC] CHECK ((datepart(hour,[MJW_Transfer_Date])=(0) AND datepart(minute,[MJW_Transfer_Date])=(0) AND datepart(second,[MJW_Transfer_Date])=(0) AND datepart(millisecond,[MJW_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510050] ADD CONSTRAINT [PKB0510050] PRIMARY KEY CLUSTERED  ([MJW_Investment_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12B0510050] ON [dbo].[B0510050] ([IMS_Broker_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B0510050] ON [dbo].[B0510050] ([MJW_Admit_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B0510050] ON [dbo].[B0510050] ([MJW_Cancellation_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11B0510050] ON [dbo].[B0510050] ([MJW_Certificate_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK14B0510050] ON [dbo].[B0510050] ([MJW_Offering_ID], [MJW_Admit_Date], [MJW_Series_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B0510050] ON [dbo].[B0510050] ([MJW_Offering_ID], [MJW_Series_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B0510050] ON [dbo].[B0510050] ([MJW_Offering_ID], [MJW_Series_ID], [MJW_Admit_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B0510050] ON [dbo].[B0510050] ([MJW_Offering_ID], [MJW_Series_ID], [MJW_Closing_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10B0510050] ON [dbo].[B0510050] ([MJW_Offering_ID], [MJW_Series_ID], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9B0510050] ON [dbo].[B0510050] ([MJW_Series_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B0510050] ON [dbo].[B0510050] ([MJW_Transfer_Number], [MJW_Transfer_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13B0510050] ON [dbo].[B0510050] ([SLPRSNID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510050] ON [dbo].[B0510050] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK15B0510050] ON [dbo].[B0510050] ([VENDORID], [MJW_Investment_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[MJW_Source]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[BSSI_Investment_Ref]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510050].[MJW_Accept_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510050].[MJW_Admit_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510050].[IMS_Commission_Paid_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[MJW_Owner_Type_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[MJW_Certificate_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510050].[MJW_Cancellation_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510050].[MJW_Closing_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510050].[MJW_Death_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_InvestPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510050].[MJW_Units_Purchased]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510050].[MJW_Unit_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510050].[MJW_Units_Sold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510050].[MJW_Original_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510050].[MJW_Return_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510050].[MJW_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[MJW_Transfer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[MJW_Redemption_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[IMS_Broker_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[IMS_With_Holding_Account_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[IMS_With_Holding_Account_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[IMS_With_Holding_Account_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[IMS_With_Holding_Account_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510050].[MJW_Adjusted_Capital]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_Reinvest_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510050].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[BSSI_InvestCategoryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[BSSI_InvestmentType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_InvestBearing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_AccrualsAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[REALGAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[REALLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[UNRLGAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[UNRLLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510050].[BSSI_LastRevaluationAmou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[REC_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[INT_INCOME_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[ORIG_DOC_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[REC_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[PAY_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[PAY_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[INT_EXP_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[RMDNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[VCHNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_IntrIncAccrAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_IntrExpAccrAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_AccrdIntrIncAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_AccrdIntrExpAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[BSSI_Investor_AP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510050].[BSSI_Investor_AR_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510050].[BSSI_InvestOrFund]'
GO
GRANT SELECT ON  [dbo].[B0510050] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510050] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510050] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510050] TO [DYNGRP]
GO
