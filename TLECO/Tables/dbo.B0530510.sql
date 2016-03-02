CREATE TABLE [dbo].[B0530510]
(
[BSSI_Capital_Call_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestorCallPercent] [smallint] NOT NULL,
[BSSI_Investor_CallAmount] [numeric] (19, 5) NOT NULL,
[BSSI_InvestorInvPercent] [smallint] NOT NULL,
[BSSI_InvestorInvestAmt] [numeric] (19, 5) NOT NULL,
[BSSI_Investor_AR_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Investor_AR_Batch] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Investor_AP_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Investor_Confirmed] [tinyint] NOT NULL,
[BSSI_Capital_Status_Line] [smallint] NOT NULL,
[BSSI_CommPaymentMethod] [smallint] NOT NULL,
[BSSI_Commission_Type] [smallint] NOT NULL,
[BSSI_Investor_Commission] [numeric] (19, 5) NOT NULL,
[BSSI_InvestorCommPercent] [smallint] NOT NULL,
[BSSI_Investor_Fee_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Investor_Info_Date] [datetime] NOT NULL,
[BSSI_Investor_Call_Date] [datetime] NOT NULL,
[BSSI_Investor_ReminderDT] [datetime] NOT NULL,
[BSSI_Investor_Due_Date] [datetime] NOT NULL,
[BSSI_InvestorInvestDT] [datetime] NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0530510] ADD CONSTRAINT [CK__B0530510__BSSI_I__6D345494] CHECK ((datepart(hour,[BSSI_Investor_Call_Date])=(0) AND datepart(minute,[BSSI_Investor_Call_Date])=(0) AND datepart(second,[BSSI_Investor_Call_Date])=(0) AND datepart(millisecond,[BSSI_Investor_Call_Date])=(0)))
GO
ALTER TABLE [dbo].[B0530510] ADD CONSTRAINT [CK__B0530510__BSSI_I__6F1C9D06] CHECK ((datepart(hour,[BSSI_Investor_Due_Date])=(0) AND datepart(minute,[BSSI_Investor_Due_Date])=(0) AND datepart(second,[BSSI_Investor_Due_Date])=(0) AND datepart(millisecond,[BSSI_Investor_Due_Date])=(0)))
GO
ALTER TABLE [dbo].[B0530510] ADD CONSTRAINT [CK__B0530510__BSSI_I__6C40305B] CHECK ((datepart(hour,[BSSI_Investor_Info_Date])=(0) AND datepart(minute,[BSSI_Investor_Info_Date])=(0) AND datepart(second,[BSSI_Investor_Info_Date])=(0) AND datepart(millisecond,[BSSI_Investor_Info_Date])=(0)))
GO
ALTER TABLE [dbo].[B0530510] ADD CONSTRAINT [CK__B0530510__BSSI_I__6E2878CD] CHECK ((datepart(hour,[BSSI_Investor_ReminderDT])=(0) AND datepart(minute,[BSSI_Investor_ReminderDT])=(0) AND datepart(second,[BSSI_Investor_ReminderDT])=(0) AND datepart(millisecond,[BSSI_Investor_ReminderDT])=(0)))
GO
ALTER TABLE [dbo].[B0530510] ADD CONSTRAINT [CK__B0530510__BSSI_I__7010C13F] CHECK ((datepart(hour,[BSSI_InvestorInvestDT])=(0) AND datepart(minute,[BSSI_InvestorInvestDT])=(0) AND datepart(second,[BSSI_InvestorInvestDT])=(0) AND datepart(millisecond,[BSSI_InvestorInvestDT])=(0)))
GO
ALTER TABLE [dbo].[B0530510] ADD CONSTRAINT [PKB0530510] PRIMARY KEY NONCLUSTERED  ([BSSI_Capital_Call_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530510].[BSSI_Capital_Call_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530510].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530510].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[BSSI_InvestorCallPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530510].[BSSI_Investor_CallAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[BSSI_InvestorInvPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530510].[BSSI_InvestorInvestAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530510].[BSSI_Investor_AR_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530510].[BSSI_Investor_AR_Batch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530510].[BSSI_Investor_AP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[BSSI_Investor_Confirmed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[BSSI_Capital_Status_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[BSSI_CommPaymentMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[BSSI_Commission_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530510].[BSSI_Investor_Commission]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[BSSI_InvestorCommPercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530510].[BSSI_Investor_Fee_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530510].[BSSI_Investor_Info_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530510].[BSSI_Investor_Call_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530510].[BSSI_Investor_ReminderDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530510].[BSSI_Investor_Due_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530510].[BSSI_InvestorInvestDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530510].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530510].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530510].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B0530510] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0530510] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0530510] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0530510] TO [DYNGRP]
GO
