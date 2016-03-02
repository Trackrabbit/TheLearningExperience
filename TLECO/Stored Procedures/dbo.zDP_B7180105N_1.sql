SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7180105N_1] (@BS int, @JRNENTRY int, @SQNCLINE numeric(19,5), @JRNENTRY_RS int, @SQNCLINE_RS numeric(19,5), @JRNENTRY_RE int, @SQNCLINE_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, BSSI_Deferrable, BSSI_DeferralStartDate, BSSI_Recog_TemplateID, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_DeferralEndDate, DEX_ROW_ID FROM .B7180105 WHERE ( JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, BSSI_Deferrable, BSSI_DeferralStartDate, BSSI_Recog_TemplateID, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_DeferralEndDate, DEX_ROW_ID FROM .B7180105 WHERE JRNENTRY = @JRNENTRY_RS AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE AND ( JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC END ELSE BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, BSSI_Deferrable, BSSI_DeferralStartDate, BSSI_Recog_TemplateID, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_DeferralEndDate, DEX_ROW_ID FROM .B7180105 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE AND ( JRNENTRY = @JRNENTRY AND SQNCLINE > @SQNCLINE OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, SQNCLINE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7180105N_1] TO [DYNGRP]
GO
