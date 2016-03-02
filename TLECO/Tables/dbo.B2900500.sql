CREATE TABLE [dbo].[B2900500]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIG_DOC_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[MISCAMNT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CASHAMNT] [numeric] (19, 5) NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[SCHEDULE_INT_TYPE1] [smallint] NOT NULL,
[SCHEDULE_INT_RATE] [int] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[FIRST_INV_DOC_DATE] [datetime] NOT NULL,
[BSSI_Rev_Source_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[BSSI_Lease_Loan_Status] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DCNUMCSH] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCNUMCHK] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCNUMCRD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCTAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_LeaseID] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NUM_PAYMENTS] [smallint] NOT NULL,
[BSSI_CalculatedDeferralA] [numeric] (19, 5) NOT NULL,
[REC_OFFSET_ACCT_IDX] [int] NOT NULL,
[PYMTTYPE] [smallint] NOT NULL,
[BSSI_cTotalChargeAmt] [numeric] (19, 5) NOT NULL,
[BSSI_EnableNegativeAmort] [tinyint] NOT NULL,
[BSSI_AccrualsAcctIdx] [int] NOT NULL,
[REC_ACCT_IDX] [int] NOT NULL,
[INT_INCOME_ACCT_IDX] [int] NOT NULL,
[BSSI_DefferalInterestInd] [int] NOT NULL,
[BSSI_DeductionAcctIdx] [int] NOT NULL,
[BSSI_DefferalPrincplINDX] [int] NOT NULL,
[BSSI_DefferalChargeINDX] [int] NOT NULL,
[SLSINDX] [int] NOT NULL,
[BSSI_LeaseLoanType] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLASSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableLoanPayrollLi] [tinyint] NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_dReCalculateDate] [datetime] NOT NULL,
[BSSI_cProRatedIntAmt] [numeric] (19, 5) NOT NULL,
[BSSI_cUnUsdPRatedIntAmt] [numeric] (19, 5) NOT NULL,
[BSSI_First_Reminder] [tinyint] NOT NULL,
[BSSI_First_Reminder_Date] [datetime] NOT NULL,
[BSSI_Sec_Reminder] [tinyint] NOT NULL,
[BSSI_Sec_Reminder_Date] [datetime] NOT NULL,
[BSSI_Third_Reminder] [tinyint] NOT NULL,
[BSSI_Third_Reminder_Date] [datetime] NOT NULL,
[BSSI_Suspend] [tinyint] NOT NULL,
[BSSI_EnableDisbLoan] [tinyint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[BSSI_PayrollComment] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableDeferralFunct] [tinyint] NOT NULL,
[BSSI_EnableDeferCharge] [tinyint] NOT NULL,
[BSSI_EnableDeferPrincipa] [tinyint] NOT NULL,
[BSSI_EnableDeferInterest] [tinyint] NOT NULL,
[BSSI_EnableLinkToARDoc] [tinyint] NOT NULL,
[BSSI_cProRatedXtraChgAmt] [numeric] (19, 5) NOT NULL,
[BSSI_ProratedDays] [smallint] NOT NULL,
[PAY_ACCT_IDX] [int] NOT NULL,
[PAY_OFFSET_ACCT_IDX] [int] NOT NULL,
[INT_EXP_ACCT_IDX] [int] NOT NULL,
[BSSI_IntrExpAccrAcctIdx] [int] NOT NULL,
[BSSI_IntrIncAccrAcctIdx] [int] NOT NULL,
[BSSI_AccrdIntrExpAcctIdx] [int] NOT NULL,
[BSSI_AccrdIntrIncAcctIdx] [int] NOT NULL,
[BSSI_InterestMethod] [smallint] NOT NULL,
[BSSI_RecalculateInterest] [tinyint] NOT NULL,
[BSSI_LoanDisbursementIND] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [CK__B2900500__BSSI_d__21A455EA] CHECK ((datepart(hour,[BSSI_dReCalculateDate])=(0) AND datepart(minute,[BSSI_dReCalculateDate])=(0) AND datepart(second,[BSSI_dReCalculateDate])=(0) AND datepart(millisecond,[BSSI_dReCalculateDate])=(0)))
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [CK__B2900500__BSSI_F__22987A23] CHECK ((datepart(hour,[BSSI_First_Reminder_Date])=(0) AND datepart(minute,[BSSI_First_Reminder_Date])=(0) AND datepart(second,[BSSI_First_Reminder_Date])=(0) AND datepart(millisecond,[BSSI_First_Reminder_Date])=(0)))
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [CK__B2900500__BSSI_S__238C9E5C] CHECK ((datepart(hour,[BSSI_Sec_Reminder_Date])=(0) AND datepart(minute,[BSSI_Sec_Reminder_Date])=(0) AND datepart(second,[BSSI_Sec_Reminder_Date])=(0) AND datepart(millisecond,[BSSI_Sec_Reminder_Date])=(0)))
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [CK__B2900500__BSSI_T__2480C295] CHECK ((datepart(hour,[BSSI_Third_Reminder_Date])=(0) AND datepart(minute,[BSSI_Third_Reminder_Date])=(0) AND datepart(second,[BSSI_Third_Reminder_Date])=(0) AND datepart(millisecond,[BSSI_Third_Reminder_Date])=(0)))
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [CK__B2900500__CHANGE__2574E6CE] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [CK__B2900500__DOCDAT__1EC7E93F] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [CK__B2900500__FIRST___20B031B1] CHECK ((datepart(hour,[FIRST_INV_DOC_DATE])=(0) AND datepart(minute,[FIRST_INV_DOC_DATE])=(0) AND datepart(second,[FIRST_INV_DOC_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DOC_DATE])=(0)))
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [CK__B2900500__STRTDA__1FBC0D78] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900500] ADD CONSTRAINT [PKB2900500] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B2900500] ON [dbo].[B2900500] ([BSSI_LeaseID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2900500] ON [dbo].[B2900500] ([ORIG_DOC_NUMBER], [BSSI_Lease_Loan_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900500] ON [dbo].[B2900500] ([SCHEDULE_NUMBER], [BSSI_Lease_Loan_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[ORIG_DOC_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[MISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900500].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[CASHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900500].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900500].[FIRST_INV_DOC_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BSSI_Rev_Source_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_Lease_Loan_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[DCNUMCSH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[DCNUMCHK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[DCNUMCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[ACCTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BSSI_LeaseID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[NUM_PAYMENTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[BSSI_CalculatedDeferralA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[REC_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[PYMTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[BSSI_cTotalChargeAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_EnableNegativeAmort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_AccrualsAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[REC_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[INT_INCOME_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_DefferalInterestInd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_DeductionAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_DefferalPrincplINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_DefferalChargeINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[SLSINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BSSI_LeaseLoanType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[CLASSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_EnableLoanPayrollLi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900500].[BSSI_dReCalculateDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[BSSI_cProRatedIntAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[BSSI_cUnUsdPRatedIntAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_First_Reminder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900500].[BSSI_First_Reminder_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_Sec_Reminder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900500].[BSSI_Sec_Reminder_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_Third_Reminder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900500].[BSSI_Third_Reminder_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_Suspend]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_EnableDisbLoan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900500].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900500].[BSSI_PayrollComment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_EnableDeferralFunct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_EnableDeferCharge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_EnableDeferPrincipa]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_EnableDeferInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_EnableLinkToARDoc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900500].[BSSI_cProRatedXtraChgAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_ProratedDays]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[PAY_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[PAY_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[INT_EXP_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_IntrExpAccrAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_IntrIncAccrAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_AccrdIntrExpAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_AccrdIntrIncAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_InterestMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_RecalculateInterest]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900500].[BSSI_LoanDisbursementIND]'
GO
GRANT SELECT ON  [dbo].[B2900500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900500] TO [DYNGRP]
GO
