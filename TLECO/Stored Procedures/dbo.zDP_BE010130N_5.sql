SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE010130N_5] (@BS int, @BENEFITKIND_I smallint, @EMPID_I char(15), @BENEFIT char(7), @DEX_ROW_ID int, @BENEFITKIND_I_RS smallint, @EMPID_I_RS char(15), @BENEFIT_RS char(7), @BENEFITKIND_I_RE smallint, @EMPID_I_RE char(15), @BENEFIT_RE char(7)) AS  set nocount on IF @BENEFITKIND_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, TIERSUSED_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, ELIGIBILITYDATE_I, PRIMARYBENEFICIARY_I, SECBENEFICIARY_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, DEDINITBAL, INACTBENEMPLOYEE, INACTBENEMPLR, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, LIFEINSURTYPE, OfferOfCoverageCode, SafeHarborCode, DEX_ROW_ID FROM .BE010130 WHERE ( BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I = @EMPID_I AND BENEFIT = @BENEFIT AND DEX_ROW_ID > @DEX_ROW_ID OR BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I = @EMPID_I AND BENEFIT > @BENEFIT OR BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I > @EMPID_I OR BENEFITKIND_I > @BENEFITKIND_I ) ORDER BY BENEFITKIND_I ASC, EMPID_I ASC, BENEFIT ASC, DEX_ROW_ID ASC END ELSE IF @BENEFITKIND_I_RS = @BENEFITKIND_I_RE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, TIERSUSED_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, ELIGIBILITYDATE_I, PRIMARYBENEFICIARY_I, SECBENEFICIARY_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, DEDINITBAL, INACTBENEMPLOYEE, INACTBENEMPLR, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, LIFEINSURTYPE, OfferOfCoverageCode, SafeHarborCode, DEX_ROW_ID FROM .BE010130 WHERE BENEFITKIND_I = @BENEFITKIND_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I = @EMPID_I AND BENEFIT = @BENEFIT AND DEX_ROW_ID > @DEX_ROW_ID OR BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I = @EMPID_I AND BENEFIT > @BENEFIT OR BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I > @EMPID_I OR BENEFITKIND_I > @BENEFITKIND_I ) ORDER BY BENEFITKIND_I ASC, EMPID_I ASC, BENEFIT ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, BENEFITTYPE_I, IINDEX_I, BENEFITKIND_I, COMPLETIONSTATUS_I, POLICYNUMBER_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, CHECK1_I, CHECK2_I, CHECK3_I, CHECK4_I, CHECK5_I, DATEDUE_I, DSCRIPTN, COMMENTSTR10_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, BENELIGIBILEDATE_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, BENEFICIARYINDEX_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, CONTRIBPRETAX_I, CONTPRETAXDLR_I, CONTRIBAFTERTAX_I, CONTAFTERTAXDLR_I, CONTRIBBONUS_I, CONTRIBBONUSDOLLAR_I, HIGHLYCOMPENSATED_I, LOANACTIVE_I, TYPEOFCODE_I, TIERSUSED_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, ELIGIBILITYDATE_I, PRIMARYBENEFICIARY_I, SECBENEFICIARY_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, DEDINITBAL, INACTBENEMPLOYEE, INACTBENEMPLR, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, LIFEINSURTYPE, OfferOfCoverageCode, SafeHarborCode, DEX_ROW_ID FROM .BE010130 WHERE BENEFITKIND_I BETWEEN @BENEFITKIND_I_RS AND @BENEFITKIND_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I = @EMPID_I AND BENEFIT = @BENEFIT AND DEX_ROW_ID > @DEX_ROW_ID OR BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I = @EMPID_I AND BENEFIT > @BENEFIT OR BENEFITKIND_I = @BENEFITKIND_I AND EMPID_I > @EMPID_I OR BENEFITKIND_I > @BENEFITKIND_I ) ORDER BY BENEFITKIND_I ASC, EMPID_I ASC, BENEFIT ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE010130N_5] TO [DYNGRP]
GO
