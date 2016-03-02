SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100100N_1] (@BS int, @SETUPKEY smallint, @SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, BSSI_Adjust_For_Prior, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Autopost_JE, BSSI_POP_Disable_Non_Inv, BSSI_Recog_Frequency, BSSI_Schedule_Change_Pas, BSSI_New_Renew, BSSI_Contract_Prefix, BSSI_Contract_Number_NN, BSSI_CREMemoRadioSetup, BSSI_bUseAP, BSSI_bUseAR, BSSI_bUsePOP, BSSI_bUseSOP, BSSI_ddlSalesRecogType, BSSI_ddlPurchRecogType, BSSI_ddlARRecogType, BSSI_ddlAPRecogType, BSSI_bRecurringBilling, BSSI_bIsJournalEntryOnHo, BSSI_bUseGL, BSSI_ddlGLRecogType, BSSI_DisableAutoNumber, BSSI_NotMergePeriods, BSSI_Include_Markdown, BSSI_EnableAAOverride, BSSI_EnableAcctSubst, BSSI_UseTaxExclusiveAmt, BSSI_DefaultDefStartDt, BSSI_EnableEventBased, BSSI_NoDupEvents, BSSI_DefaultDefStartDt1, BSSI_UseEventIdentifer, BSSI_ValidateUniqID, BSSI_End_Date_Change_Pas, BSSI_Event_ID_Change_Pas, BSSI_DoNotCreateSchOnRet, BSSI_ZeroAmtSch, BSSI_AcctSubByTerritory, BSSI_EnableGLAAOverride, BSSI_EnablePMAAOverride, BSSI_EnablePOPAAOverride, BSSI_EnableRMAAOverride, BSSI_Summary_JE, DEX_ROW_ID FROM .B7100100 WHERE ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Adjust_For_Prior, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Autopost_JE, BSSI_POP_Disable_Non_Inv, BSSI_Recog_Frequency, BSSI_Schedule_Change_Pas, BSSI_New_Renew, BSSI_Contract_Prefix, BSSI_Contract_Number_NN, BSSI_CREMemoRadioSetup, BSSI_bUseAP, BSSI_bUseAR, BSSI_bUsePOP, BSSI_bUseSOP, BSSI_ddlSalesRecogType, BSSI_ddlPurchRecogType, BSSI_ddlARRecogType, BSSI_ddlAPRecogType, BSSI_bRecurringBilling, BSSI_bIsJournalEntryOnHo, BSSI_bUseGL, BSSI_ddlGLRecogType, BSSI_DisableAutoNumber, BSSI_NotMergePeriods, BSSI_Include_Markdown, BSSI_EnableAAOverride, BSSI_EnableAcctSubst, BSSI_UseTaxExclusiveAmt, BSSI_DefaultDefStartDt, BSSI_EnableEventBased, BSSI_NoDupEvents, BSSI_DefaultDefStartDt1, BSSI_UseEventIdentifer, BSSI_ValidateUniqID, BSSI_End_Date_Change_Pas, BSSI_Event_ID_Change_Pas, BSSI_DoNotCreateSchOnRet, BSSI_ZeroAmtSch, BSSI_AcctSubByTerritory, BSSI_EnableGLAAOverride, BSSI_EnablePMAAOverride, BSSI_EnablePOPAAOverride, BSSI_EnableRMAAOverride, BSSI_Summary_JE, DEX_ROW_ID FROM .B7100100 WHERE SETUPKEY = @SETUPKEY_RS AND ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Adjust_For_Prior, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Autopost_JE, BSSI_POP_Disable_Non_Inv, BSSI_Recog_Frequency, BSSI_Schedule_Change_Pas, BSSI_New_Renew, BSSI_Contract_Prefix, BSSI_Contract_Number_NN, BSSI_CREMemoRadioSetup, BSSI_bUseAP, BSSI_bUseAR, BSSI_bUsePOP, BSSI_bUseSOP, BSSI_ddlSalesRecogType, BSSI_ddlPurchRecogType, BSSI_ddlARRecogType, BSSI_ddlAPRecogType, BSSI_bRecurringBilling, BSSI_bIsJournalEntryOnHo, BSSI_bUseGL, BSSI_ddlGLRecogType, BSSI_DisableAutoNumber, BSSI_NotMergePeriods, BSSI_Include_Markdown, BSSI_EnableAAOverride, BSSI_EnableAcctSubst, BSSI_UseTaxExclusiveAmt, BSSI_DefaultDefStartDt, BSSI_EnableEventBased, BSSI_NoDupEvents, BSSI_DefaultDefStartDt1, BSSI_UseEventIdentifer, BSSI_ValidateUniqID, BSSI_End_Date_Change_Pas, BSSI_Event_ID_Change_Pas, BSSI_DoNotCreateSchOnRet, BSSI_ZeroAmtSch, BSSI_AcctSubByTerritory, BSSI_EnableGLAAOverride, BSSI_EnablePMAAOverride, BSSI_EnablePOPAAOverride, BSSI_EnableRMAAOverride, BSSI_Summary_JE, DEX_ROW_ID FROM .B7100100 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE AND ( SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100100N_1] TO [DYNGRP]
GO
