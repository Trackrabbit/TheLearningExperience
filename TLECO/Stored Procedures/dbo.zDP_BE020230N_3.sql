SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE020230N_3] (@BS int, @BENEFITKIND_I smallint, @BENEFIT char(7), @BENEFITKIND_I_RS smallint, @BENEFIT_RS char(7), @BENEFITKIND_I_RE smallint, @BENEFIT_RE char(7)) AS  set nocount on IF @BENEFITKIND_I_RS IS NULL BEGIN SELECT TOP 25  BENEFIT, DSCRIPTN, BENEFITSTATUS_I, COMPLETIONSTATUS_I, INACTIVE, BENEFITKIND_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, CARRIER, GROUPNUMBER_I, PORTABLEBENEFIT_I, PORABLEINDEX_I, MAXAGEEMP_I, MAXAGEDEP_I, MAXAGESP_I, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, GB_I, COSTTOTAL_I, COSTCOBRA_I, BENAMOUNT_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NEAREST_I, NEARESTCHILD_I, NEARESTSPOUSE_I, NEARESTEMPLOYER_I, PREMMETHOD_I, PREMIUMEMPLOYEE_I, PREMIUMSPOUSE_I, PREMIUMCHILD_I, PREMIUMEMPLOYER_I, PREMIUMSMOKER_I, FACTOR_I, ROUNDUP_I, PDLIFE_I, CONTEMPMATCH_I, CONTRIBEMPLOYERMAX_I, MINAGE_I, BONUSELACTIVE_I, LOANSALLOWED_I, HARDSHPWITHDRAW_I, TYPEOFCODE_I, CONTRIBDOLLAR_I, CONTRIBPERCENT_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, WAITINGPERIOD_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, INACTBENEMPLOYEE, INACTBENEMPLR, GARNISHMENT, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, LIFEINSURTYPE, OfferOfCoverageCode, SafeHarborCode, DEX_ROW_ID FROM .BE020230 WHERE ( BENEFITKIND_I = @BENEFITKIND_I AND BENEFIT > @BENEFIT OR BENEFITKIND_I > @BENEFITKIND_I ) ORDER BY BENEFITKIND_I ASC, BENEFIT ASC END ELSE IF @BENEFITKIND_I_RS = @BENEFITKIND_I_RE BEGIN SELECT TOP 25  BENEFIT, DSCRIPTN, BENEFITSTATUS_I, COMPLETIONSTATUS_I, INACTIVE, BENEFITKIND_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, CARRIER, GROUPNUMBER_I, PORTABLEBENEFIT_I, PORABLEINDEX_I, MAXAGEEMP_I, MAXAGEDEP_I, MAXAGESP_I, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, GB_I, COSTTOTAL_I, COSTCOBRA_I, BENAMOUNT_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NEAREST_I, NEARESTCHILD_I, NEARESTSPOUSE_I, NEARESTEMPLOYER_I, PREMMETHOD_I, PREMIUMEMPLOYEE_I, PREMIUMSPOUSE_I, PREMIUMCHILD_I, PREMIUMEMPLOYER_I, PREMIUMSMOKER_I, FACTOR_I, ROUNDUP_I, PDLIFE_I, CONTEMPMATCH_I, CONTRIBEMPLOYERMAX_I, MINAGE_I, BONUSELACTIVE_I, LOANSALLOWED_I, HARDSHPWITHDRAW_I, TYPEOFCODE_I, CONTRIBDOLLAR_I, CONTRIBPERCENT_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, WAITINGPERIOD_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, INACTBENEMPLOYEE, INACTBENEMPLR, GARNISHMENT, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, LIFEINSURTYPE, OfferOfCoverageCode, SafeHarborCode, DEX_ROW_ID FROM .BE020230 WHERE BENEFITKIND_I = @BENEFITKIND_I_RS AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( BENEFITKIND_I = @BENEFITKIND_I AND BENEFIT > @BENEFIT OR BENEFITKIND_I > @BENEFITKIND_I ) ORDER BY BENEFITKIND_I ASC, BENEFIT ASC END ELSE BEGIN SELECT TOP 25  BENEFIT, DSCRIPTN, BENEFITSTATUS_I, COMPLETIONSTATUS_I, INACTIVE, BENEFITKIND_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, CARRIER, GROUPNUMBER_I, PORTABLEBENEFIT_I, PORABLEINDEX_I, MAXAGEEMP_I, MAXAGEDEP_I, MAXAGESP_I, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, GB_I, COSTTOTAL_I, COSTCOBRA_I, BENAMOUNT_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NEAREST_I, NEARESTCHILD_I, NEARESTSPOUSE_I, NEARESTEMPLOYER_I, PREMMETHOD_I, PREMIUMEMPLOYEE_I, PREMIUMSPOUSE_I, PREMIUMCHILD_I, PREMIUMEMPLOYER_I, PREMIUMSMOKER_I, FACTOR_I, ROUNDUP_I, PDLIFE_I, CONTEMPMATCH_I, CONTRIBEMPLOYERMAX_I, MINAGE_I, BONUSELACTIVE_I, LOANSALLOWED_I, HARDSHPWITHDRAW_I, TYPEOFCODE_I, CONTRIBDOLLAR_I, CONTRIBPERCENT_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, WAITINGPERIOD_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, INACTBENEMPLOYEE, INACTBENEMPLR, GARNISHMENT, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, LIFEINSURTYPE, OfferOfCoverageCode, SafeHarborCode, DEX_ROW_ID FROM .BE020230 WHERE BENEFITKIND_I BETWEEN @BENEFITKIND_I_RS AND @BENEFITKIND_I_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( BENEFITKIND_I = @BENEFITKIND_I AND BENEFIT > @BENEFIT OR BENEFITKIND_I > @BENEFITKIND_I ) ORDER BY BENEFITKIND_I ASC, BENEFIT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE020230N_3] TO [DYNGRP]
GO
