CREATE TABLE [dbo].[B4602243]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Escalation_Line_Seq] [numeric] (19, 5) NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Sales_Amount] [numeric] (19, 5) NOT NULL,
[DISCAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Discount_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Charge_Escalation_A] [numeric] (19, 5) NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Average_SL_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Line_SL_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Adjustment] [numeric] (19, 5) NOT NULL,
[BSSI_Total_SL_Adjustment] [numeric] (19, 5) NOT NULL,
[BSSI_Increase_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Invoiced] [tinyint] NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Is_Multiple_Invoice] [tinyint] NOT NULL,
[BSSI_SOP_LINE_Sequence] [int] NOT NULL,
[BSSI_Is_SL_Created] [tinyint] NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Is_Prorate_First_Pe] [tinyint] NOT NULL,
[BSSI_Is_Prorate_Last_Per] [tinyint] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Exp_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Exp_Adj_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Exp_Status] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Is_Reconciled] [tinyint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[BSSI_LateFeeCharge] [tinyint] NOT NULL,
[BSSI_PercentRent] [tinyint] NOT NULL,
[BSSI_ReversingChargeLine] [numeric] (19, 5) NOT NULL,
[BSSI_Contributions] [tinyint] NOT NULL,
[BSSI_Term] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_CalculationMethod] [smallint] NOT NULL,
[BSSI_bOneTimeCharge] [tinyint] NOT NULL,
[BSSI_IsRentAbatement] [smallint] NOT NULL,
[BSSI_SOPComment] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[BSSI_Escalation_Type] [smallint] NOT NULL,
[BSSI_ExpReconcile_AP] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ExpReconcile_AR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[BSSI_Discount_Amount2] [numeric] (19, 5) NOT NULL,
[DOCNUM30] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602243] ADD CONSTRAINT [CK__B4602243__ENDDAT__4B4589FB] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602243] ADD CONSTRAINT [CK__B4602243__MODIFD__4C39AE34] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B4602243] ADD CONSTRAINT [CK__B4602243__STRTDA__4A5165C2] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602243] ADD CONSTRAINT [PKB4602243] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [BSSI_Invoiced], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [BSSI_Invoiced], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNITMSEQ], [STRTDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [STRTDATE], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK11B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [YEAR1], [PERIODID], [BSSI_IsRentAbatement], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [BSSI_Invoiced], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [BSSI_Invoiced], [SOPTYPE], [SOPNUMBE], [BSSI_SOP_LINE_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602243] ON [dbo].[B4602243] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK15B4602243] ON [dbo].[B4602243] ([DOCNUM30], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK14B4602243] ON [dbo].[B4602243] ([JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK16B4602243] ON [dbo].[B4602243] ([SOPNUMBE], [SOPTYPE], [BSSI_SOP_LINE_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4602243] ON [dbo].[B4602243] ([SOPTYPE], [SOPNUMBE], [BSSI_SOP_LINE_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Escalation_Line_Seq]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602243].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602243].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Billing_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[DISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Discount_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Charge_Escalation_A]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Average_SL_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Line_SL_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Total_Adjustment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Total_SL_Adjustment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Increase_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Invoiced]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Is_Multiple_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_SOP_LINE_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Is_SL_Created]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Is_Prorate_First_Pe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Is_Prorate_Last_Per]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Exp_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Exp_Adj_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[BSSI_Exp_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Is_Reconciled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602243].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_LateFeeCharge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_PercentRent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_ReversingChargeLine]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Contributions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[BSSI_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_CalculationMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_bOneTimeCharge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_IsRentAbatement]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[BSSI_SOPComment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Escalation_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[BSSI_ExpReconcile_AP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[BSSI_ExpReconcile_AR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602243].[BSSI_Discount_Amount2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602243].[DOCNUM30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602243].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4602243] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602243] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602243] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602243] TO [DYNGRP]
GO
