SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN10F_3] (@BENEFIT_RS char(7), @EMPID_I_RS char(15), @BNFBEGDT_RS datetime, @I1_I_RS smallint, @BENEFIT_RE char(7), @EMPID_I_RE char(15), @BNFBEGDT_RE datetime, @I1_I_RE smallint) AS  set nocount on IF @BENEFIT_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I1_I, BENEFITTYPE_I, IINDEX_I, POLICYNUMBER_I, GROUPNUMBER_I, DATE1, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, COSTOTHER3_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, DEX_ROW_ID FROM .HR2BEN10 ORDER BY BENEFIT ASC, EMPID_I ASC, BNFBEGDT DESC, I1_I DESC, DEX_ROW_ID ASC END ELSE IF @BENEFIT_RS = @BENEFIT_RE BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I1_I, BENEFITTYPE_I, IINDEX_I, POLICYNUMBER_I, GROUPNUMBER_I, DATE1, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, COSTOTHER3_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, DEX_ROW_ID FROM .HR2BEN10 WHERE BENEFIT = @BENEFIT_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND BNFBEGDT BETWEEN @BNFBEGDT_RE AND @BNFBEGDT_RS AND I1_I BETWEEN @I1_I_RE AND @I1_I_RS ORDER BY BENEFIT ASC, EMPID_I ASC, BNFBEGDT DESC, I1_I DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I1_I, BENEFITTYPE_I, IINDEX_I, POLICYNUMBER_I, GROUPNUMBER_I, DATE1, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, COSTOTHER3_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, DEX_ROW_ID FROM .HR2BEN10 WHERE BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND BNFBEGDT BETWEEN @BNFBEGDT_RE AND @BNFBEGDT_RS AND I1_I BETWEEN @I1_I_RE AND @I1_I_RS ORDER BY BENEFIT ASC, EMPID_I ASC, BNFBEGDT DESC, I1_I DESC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN10F_3] TO [DYNGRP]
GO
