CREATE TABLE [dbo].[B4602943]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
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
[BSSI_EasementID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Escalation_A] [numeric] (19, 5) NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Average_SL_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Line_SL_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Adjustment] [numeric] (19, 5) NOT NULL,
[BSSI_Total_SL_Adjustment] [numeric] (19, 5) NOT NULL,
[BSSI_Increase_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Invoiced] [tinyint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[VCHNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Is_Multiple_Invoice] [tinyint] NOT NULL,
[BSSI_Is_SL_Created] [tinyint] NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Is_Prorate_First_Pe] [tinyint] NOT NULL,
[BSSI_Is_Prorate_Last_Per] [tinyint] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[BSSI_Escalation_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602943] ADD CONSTRAINT [CK__B4602943__ENDDAT__63D69E3A] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602943] ADD CONSTRAINT [CK__B4602943__MODIFD__64CAC273] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B4602943] ADD CONSTRAINT [CK__B4602943__STRTDA__62E27A01] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4602943] ADD CONSTRAINT [PKB4602943] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602943] ON [dbo].[B4602943] ([BSSI_Ground_Lease_Number], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B4602943] ON [dbo].[B4602943] ([BSSI_Ground_Lease_Number], [BSSI_Charge_ID], [STRTDATE], [ENDDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B4602943] ON [dbo].[B4602943] ([BSSI_Ground_Lease_Number], [BSSI_Charge_ID], [YEAR1], [PERIODID], [STRTDATE], [ENDDATE], [BSSI_Invoiced], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4602943] ON [dbo].[B4602943] ([BSSI_Ground_Lease_Number], [LNITMSEQ], [BSSI_Invoiced], [DOCTYPE], [VCHNUMWK], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602943] ON [dbo].[B4602943] ([BSSI_Ground_Lease_Number], [LNITMSEQ], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602943] ON [dbo].[B4602943] ([BSSI_Ground_Lease_Number], [LNITMSEQ], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4602943] ON [dbo].[B4602943] ([DOCTYPE], [VCHNUMWK], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9B4602943] ON [dbo].[B4602943] ([JRNENTRY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602943].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602943].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602943].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602943].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[BSSI_Billing_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[BSSI_Sales_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[DISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[BSSI_Discount_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602943].[BSSI_EasementID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[BSSI_Charge_Escalation_A]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[BSSI_Average_SL_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[BSSI_Line_SL_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[BSSI_Total_Adjustment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[BSSI_Total_SL_Adjustment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602943].[BSSI_Increase_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602943].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[BSSI_Invoiced]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602943].[VCHNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[BSSI_Is_Multiple_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[BSSI_Is_SL_Created]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602943].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[BSSI_Is_Prorate_First_Pe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[BSSI_Is_Prorate_Last_Per]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602943].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602943].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602943].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602943].[BSSI_Escalation_Type]'
GO
GRANT SELECT ON  [dbo].[B4602943] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602943] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602943] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602943] TO [DYNGRP]
GO
