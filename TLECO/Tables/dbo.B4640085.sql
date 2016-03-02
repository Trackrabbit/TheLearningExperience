CREATE TABLE [dbo].[B4640085]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_BreakField1] [smallint] NOT NULL,
[BSSI_BreakField2] [smallint] NOT NULL,
[BSSI_BreakField3] [smallint] NOT NULL,
[BSSI_BreakField4] [smallint] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_CPI_Index] [numeric] (19, 5) NOT NULL,
[BSSI_CPI_Index1] [numeric] (19, 5) NOT NULL,
[BSSI_CPI_Date] [datetime] NOT NULL,
[BSSI_CPI_Date1] [datetime] NOT NULL,
[BSSI_CPIChange] [numeric] (19, 5) NOT NULL,
[BSSI_CPIAmount] [numeric] (19, 5) NOT NULL,
[BSSI_CurrentRate] [numeric] (19, 5) NOT NULL,
[BSSI_PreviousRate] [numeric] (19, 5) NOT NULL,
[BSSI_Effective_Date] [datetime] NOT NULL,
[BSSI_PreviousEffectiveDa] [datetime] NOT NULL,
[BSSI_Increase_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Increase_Percent] [numeric] (19, 5) NOT NULL,
[BSSI_CeilingAmount] [numeric] (19, 5) NOT NULL,
[BSSI_CeilingAmt] [numeric] (19, 5) NOT NULL,
[BSSI_FlooringAmount] [numeric] (19, 5) NOT NULL,
[BSSI_FloorAmt] [numeric] (19, 5) NOT NULL,
[BSSI_ProrationFactor] [numeric] (19, 5) NOT NULL,
[BSSI_EscProrationFactor] [numeric] (19, 5) NOT NULL,
[BSSI_PrevAmount] [numeric] (19, 5) NOT NULL,
[BSSI_CurAmount] [numeric] (19, 5) NOT NULL,
[BSSI_EscalationType] [smallint] NOT NULL,
[BSSI_PercentAmount] [numeric] (19, 5) NOT NULL,
[BSSI_RateAmount] [numeric] (19, 5) NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_CPI_Schedule_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSIChargeRateScheduleID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[BSSI_Total_Adjustment] [numeric] (19, 5) NOT NULL,
[BSSI_Escalation_Type1] [smallint] NOT NULL,
[BSSI_RateChange] [numeric] (19, 5) NOT NULL,
[BSSI_ProratedIncrease] [numeric] (19, 5) NOT NULL,
[BSSI_EscalationApplyDate] [datetime] NOT NULL,
[BSSI_EscalationPrevApply] [datetime] NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_AmountBeforeAdj] [numeric] (19, 5) NOT NULL,
[BSSI_AmountBeforeProrati] [numeric] (19, 5) NOT NULL,
[BSSI_Charge_Amount] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [CK__B4640085__BSSI_C__2D706BE8] CHECK ((datepart(hour,[BSSI_CPI_Date])=(0) AND datepart(minute,[BSSI_CPI_Date])=(0) AND datepart(second,[BSSI_CPI_Date])=(0) AND datepart(millisecond,[BSSI_CPI_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [CK__B4640085__BSSI_C__2E649021] CHECK ((datepart(hour,[BSSI_CPI_Date1])=(0) AND datepart(minute,[BSSI_CPI_Date1])=(0) AND datepart(second,[BSSI_CPI_Date1])=(0) AND datepart(millisecond,[BSSI_CPI_Date1])=(0)))
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [CK__B4640085__BSSI_E__2F58B45A] CHECK ((datepart(hour,[BSSI_Effective_Date])=(0) AND datepart(minute,[BSSI_Effective_Date])=(0) AND datepart(second,[BSSI_Effective_Date])=(0) AND datepart(millisecond,[BSSI_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [CK__B4640085__BSSI_E__3329453E] CHECK ((datepart(hour,[BSSI_EscalationApplyDate])=(0) AND datepart(minute,[BSSI_EscalationApplyDate])=(0) AND datepart(second,[BSSI_EscalationApplyDate])=(0) AND datepart(millisecond,[BSSI_EscalationApplyDate])=(0)))
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [CK__B4640085__BSSI_E__341D6977] CHECK ((datepart(hour,[BSSI_EscalationPrevApply])=(0) AND datepart(minute,[BSSI_EscalationPrevApply])=(0) AND datepart(second,[BSSI_EscalationPrevApply])=(0) AND datepart(millisecond,[BSSI_EscalationPrevApply])=(0)))
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [CK__B4640085__BSSI_P__304CD893] CHECK ((datepart(hour,[BSSI_PreviousEffectiveDa])=(0) AND datepart(minute,[BSSI_PreviousEffectiveDa])=(0) AND datepart(second,[BSSI_PreviousEffectiveDa])=(0) AND datepart(millisecond,[BSSI_PreviousEffectiveDa])=(0)))
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [CK__B4640085__ENDDAT__32352105] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [CK__B4640085__STRTDA__3140FCCC] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4640085] ADD CONSTRAINT [PKB4640085] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4640085] ON [dbo].[B4640085] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [BSSI_EscalationApplyDate], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4640085] ON [dbo].[B4640085] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [LNSEQNBR], [BSSI_BreakField1], [BSSI_BreakField2], [BSSI_BreakField3], [BSSI_BreakField4]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4640085] ON [dbo].[B4640085] ([SOPNUMBE], [SOPTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640085].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640085].[BSSI_BreakField1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640085].[BSSI_BreakField2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640085].[BSSI_BreakField3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640085].[BSSI_BreakField4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_CPI_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_CPI_Index1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640085].[BSSI_CPI_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640085].[BSSI_CPI_Date1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_CPIChange]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_CPIAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_CurrentRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_PreviousRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640085].[BSSI_Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640085].[BSSI_PreviousEffectiveDa]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_Increase_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_Increase_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_CeilingAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_CeilingAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_FlooringAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_FloorAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_ProrationFactor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_EscProrationFactor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_PrevAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_CurAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640085].[BSSI_EscalationType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_PercentAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_RateAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640085].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640085].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[BSSI_CPI_Schedule_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[BSSIChargeRateScheduleID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640085].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640085].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_Total_Adjustment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640085].[BSSI_Escalation_Type1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_RateChange]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_ProratedIncrease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640085].[BSSI_EscalationApplyDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640085].[BSSI_EscalationPrevApply]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_AmountBeforeAdj]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_AmountBeforeProrati]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640085].[BSSI_Charge_Amount]'
GO
GRANT SELECT ON  [dbo].[B4640085] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640085] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640085] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640085] TO [DYNGRP]
GO
