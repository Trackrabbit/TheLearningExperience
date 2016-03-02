CREATE TABLE [dbo].[B7100100]
(
[SETUPKEY] [smallint] NOT NULL,
[BSSI_Adjust_For_Prior] [tinyint] NOT NULL,
[BSSI_Prorate_All] [tinyint] NOT NULL,
[BSSI_Equal_Per_Period] [tinyint] NOT NULL,
[BSSI_Autopost_JE] [tinyint] NOT NULL,
[BSSI_POP_Disable_Non_Inv] [tinyint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_Schedule_Change_Pas] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_New_Renew] [smallint] NOT NULL,
[BSSI_Contract_Prefix] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Contract_Number_NN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_CREMemoRadioSetup] [smallint] NOT NULL,
[BSSI_bUseAP] [tinyint] NOT NULL,
[BSSI_bUseAR] [tinyint] NOT NULL,
[BSSI_bUsePOP] [tinyint] NOT NULL,
[BSSI_bUseSOP] [tinyint] NOT NULL,
[BSSI_ddlSalesRecogType] [smallint] NOT NULL,
[BSSI_ddlPurchRecogType] [smallint] NOT NULL,
[BSSI_ddlARRecogType] [smallint] NOT NULL,
[BSSI_ddlAPRecogType] [smallint] NOT NULL,
[BSSI_bRecurringBilling] [tinyint] NOT NULL,
[BSSI_bIsJournalEntryOnHo] [tinyint] NOT NULL,
[BSSI_bUseGL] [tinyint] NOT NULL,
[BSSI_ddlGLRecogType] [smallint] NOT NULL,
[BSSI_DisableAutoNumber] [tinyint] NOT NULL,
[BSSI_NotMergePeriods] [tinyint] NOT NULL,
[BSSI_Include_Markdown] [tinyint] NOT NULL,
[BSSI_EnableAAOverride] [tinyint] NOT NULL,
[BSSI_EnableAcctSubst] [tinyint] NOT NULL,
[BSSI_UseTaxExclusiveAmt] [tinyint] NOT NULL,
[BSSI_DefaultDefStartDt] [smallint] NOT NULL,
[BSSI_EnableEventBased] [tinyint] NOT NULL,
[BSSI_NoDupEvents] [tinyint] NOT NULL,
[BSSI_DefaultDefStartDt1] [smallint] NOT NULL,
[BSSI_UseEventIdentifer] [tinyint] NOT NULL,
[BSSI_ValidateUniqID] [tinyint] NOT NULL,
[BSSI_End_Date_Change_Pas] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Event_ID_Change_Pas] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DoNotCreateSchOnRet] [tinyint] NOT NULL,
[BSSI_ZeroAmtSch] [tinyint] NOT NULL,
[BSSI_AcctSubByTerritory] [tinyint] NOT NULL,
[BSSI_EnableGLAAOverride] [tinyint] NOT NULL,
[BSSI_EnablePMAAOverride] [tinyint] NOT NULL,
[BSSI_EnablePOPAAOverride] [tinyint] NOT NULL,
[BSSI_EnableRMAAOverride] [tinyint] NOT NULL,
[BSSI_Summary_JE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100100] ADD CONSTRAINT [PKB7100100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_Adjust_For_Prior]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_Prorate_All]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_Equal_Per_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_Autopost_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_POP_Disable_Non_Inv]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100100].[BSSI_Schedule_Change_Pas]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_New_Renew]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100100].[BSSI_Contract_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100100].[BSSI_Contract_Number_NN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_CREMemoRadioSetup]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_bUseAP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_bUseAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_bUsePOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_bUseSOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_ddlSalesRecogType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_ddlPurchRecogType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_ddlARRecogType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_ddlAPRecogType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_bRecurringBilling]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_bIsJournalEntryOnHo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_bUseGL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_ddlGLRecogType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_DisableAutoNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_NotMergePeriods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_Include_Markdown]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_EnableAAOverride]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_EnableAcctSubst]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_UseTaxExclusiveAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_DefaultDefStartDt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_EnableEventBased]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_NoDupEvents]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_DefaultDefStartDt1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_UseEventIdentifer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_ValidateUniqID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100100].[BSSI_End_Date_Change_Pas]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100100].[BSSI_Event_ID_Change_Pas]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_DoNotCreateSchOnRet]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_ZeroAmtSch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_AcctSubByTerritory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_EnableGLAAOverride]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_EnablePMAAOverride]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_EnablePOPAAOverride]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_EnableRMAAOverride]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100100].[BSSI_Summary_JE]'
GO
GRANT SELECT ON  [dbo].[B7100100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100100] TO [DYNGRP]
GO
