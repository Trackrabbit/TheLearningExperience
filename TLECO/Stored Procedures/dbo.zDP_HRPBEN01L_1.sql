SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPBEN01L_1] (@EMPID_I_RS char(15), @BENEFIT_RS char(7), @EMPID_I_RE char(15), @BENEFIT_RE char(7)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, DEX_ROW_ID FROM .HRPBEN01 ORDER BY EMPID_I DESC, BENEFIT DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, DEX_ROW_ID FROM .HRPBEN01 WHERE EMPID_I = @EMPID_I_RS AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY EMPID_I DESC, BENEFIT DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, DEX_ROW_ID FROM .HRPBEN01 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY EMPID_I DESC, BENEFIT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPBEN01L_1] TO [DYNGRP]
GO
