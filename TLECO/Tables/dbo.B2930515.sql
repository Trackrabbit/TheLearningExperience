CREATE TABLE [dbo].[B2930515]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ChargeID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RenewalNumber] [smallint] NOT NULL,
[BSSI_ChargeAmt] [numeric] (19, 5) NOT NULL,
[BSSI_ChargeIncInLease] [tinyint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_ChargeAccountIndex] [int] NOT NULL,
[BSSI_ChargeExcludeIntCal] [tinyint] NOT NULL,
[BSSI_ChargeEffectingPymt] [int] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[BSSI_ChargeDuration] [smallint] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[From_Period] [smallint] NOT NULL,
[To_Period] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[BSSI_EnableProrateExtraC] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930515] ADD CONSTRAINT [CK__B2930515__CHANGE__297A81DC] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[B2930515] ADD CONSTRAINT [CK__B2930515__ENDDAT__28865DA3] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B2930515] ADD CONSTRAINT [CK__B2930515__STRTDA__2792396A] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2930515] ADD CONSTRAINT [PKB2930515] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number], [BSSI_ChargeID], [LNITMSEQ], [BSSI_RenewalNumber]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2930515] ON [dbo].[B2930515] ([BSSI_Lease_Loan_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930515].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930515].[BSSI_ChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[BSSI_RenewalNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930515].[BSSI_ChargeAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[BSSI_ChargeIncInLease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[BSSI_ChargeAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[BSSI_ChargeExcludeIntCal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[BSSI_ChargeEffectingPymt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930515].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[BSSI_ChargeDuration]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930515].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[From_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[To_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930515].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930515].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930515].[BSSI_EnableProrateExtraC]'
GO
GRANT SELECT ON  [dbo].[B2930515] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930515] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930515] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930515] TO [DYNGRP]
GO
