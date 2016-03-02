SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BEA10130L_7] (@BENEFITKIND_I_RS smallint, @COMPLETIONSTATUS_I_RS smallint, @BENEFITKIND_I_RE smallint, @COMPLETIONSTATUS_I_RE smallint) AS  set nocount on IF @BENEFITKIND_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, TIERSUSED_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, ELIGIBILITYDATE_I, PRIMARYBENEFICIARY_I, SECBENEFICIARY_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, DEDINITBAL, INACTBENEMPLOYEE, INACTBENEMPLR, LIFEINSURTYPE, DEX_ROW_ID FROM .BEA10130 ORDER BY BENEFITKIND_I DESC, COMPLETIONSTATUS_I DESC, DEX_ROW_ID DESC END ELSE IF @BENEFITKIND_I_RS = @BENEFITKIND_I_RE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, TIERSUSED_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, ELIGIBILITYDATE_I, PRIMARYBENEFICIARY_I, SECBENEFICIARY_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, DEDINITBAL, INACTBENEMPLOYEE, INACTBENEMPLR, LIFEINSURTYPE, DEX_ROW_ID FROM .BEA10130 WHERE BENEFITKIND_I = @BENEFITKIND_I_RS AND COMPLETIONSTATUS_I BETWEEN @COMPLETIONSTATUS_I_RS AND @COMPLETIONSTATUS_I_RE ORDER BY BENEFITKIND_I DESC, COMPLETIONSTATUS_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, TIERSUSED_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, ELIGIBILITYDATE_I, PRIMARYBENEFICIARY_I, SECBENEFICIARY_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, DEDINITBAL, INACTBENEMPLOYEE, INACTBENEMPLR, LIFEINSURTYPE, DEX_ROW_ID FROM .BEA10130 WHERE BENEFITKIND_I BETWEEN @BENEFITKIND_I_RS AND @BENEFITKIND_I_RE AND COMPLETIONSTATUS_I BETWEEN @COMPLETIONSTATUS_I_RS AND @COMPLETIONSTATUS_I_RE ORDER BY BENEFITKIND_I DESC, COMPLETIONSTATUS_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BEA10130L_7] TO [DYNGRP]
GO
