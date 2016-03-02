CREATE TABLE [dbo].[B2900516]
(
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCH_DOC_DATE] [datetime] NOT NULL,
[BSSI_ChargeID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RenewalNumber] [smallint] NOT NULL,
[BSSI_ChargeDescription] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[COMMENT_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[BSSI_EnableProrateExtraC] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900516] ADD CONSTRAINT [CK__B2900516__CHANGE__731E712B] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[B2900516] ADD CONSTRAINT [CK__B2900516__ENDDAT__722A4CF2] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900516] ADD CONSTRAINT [CK__B2900516__SCH_DO__70420480] CHECK ((datepart(hour,[SCH_DOC_DATE])=(0) AND datepart(minute,[SCH_DOC_DATE])=(0) AND datepart(second,[SCH_DOC_DATE])=(0) AND datepart(millisecond,[SCH_DOC_DATE])=(0)))
GO
ALTER TABLE [dbo].[B2900516] ADD CONSTRAINT [CK__B2900516__STRTDA__713628B9] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900516] ADD CONSTRAINT [PKB2900516] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number], [BSSI_ChargeID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2900516] ON [dbo].[B2900516] ([BSSI_Lease_Loan_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B2900516] ON [dbo].[B2900516] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B2900516] ON [dbo].[B2900516] ([LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2900516] ON [dbo].[B2900516] ([SCHEDULE_NUMBER], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900516].[SCH_DOC_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[BSSI_ChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[BSSI_RenewalNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[BSSI_ChargeDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900516].[BSSI_ChargeAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[BSSI_ChargeIncInLease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[BSSI_ChargeAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[BSSI_ChargeExcludeIntCal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[BSSI_ChargeEffectingPymt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900516].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[BSSI_ChargeDuration]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900516].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[From_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[To_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[MKTOPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[COMMENT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[COMMENT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[COMMENT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[COMMENT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900516].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900516].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900516].[BSSI_EnableProrateExtraC]'
GO
GRANT SELECT ON  [dbo].[B2900516] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900516] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900516] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900516] TO [DYNGRP]
GO
