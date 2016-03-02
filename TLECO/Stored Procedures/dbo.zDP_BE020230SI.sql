SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE020230SI] (@BENEFIT char(7), @DSCRIPTN char(31), @BENEFITSTATUS_I smallint, @COMPLETIONSTATUS_I smallint, @INACTIVE tinyint, @BENEFITKIND_I smallint, @BNFBEGDT datetime, @BNFENDDT datetime, @VARBENFT tinyint, @BNFTFREQ smallint, @CARRIER char(31), @GROUPNUMBER_I char(31), @PORTABLEBENEFIT_I tinyint, @PORABLEINDEX_I smallint, @MAXAGEEMP_I smallint, @MAXAGEDEP_I smallint, @MAXAGESP_I smallint, @COSTEMPLOYEE_I numeric(19,5), @COSTEMPLOYER_I numeric(19,5), @COSTOTHER1_I numeric(19,5), @COSTOTHER2_I numeric(19,5), @I1_I smallint, @I2_I smallint, @I3_I smallint, @I4_I smallint, @GB_I smallint, @COSTTOTAL_I numeric(19,5), @COSTCOBRA_I numeric(19,5), @BENAMOUNT_I numeric(19,5), @BENEFITDEDUCTIBLE_I numeric(19,5), @BNPAYPMX numeric(19,5), @BNFYRMAX numeric(19,5), @BNFLFMAX numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @NOTESINDEX_I numeric(19,5), @NEAREST_I numeric(19,5), @NEARESTCHILD_I numeric(19,5), @NEARESTSPOUSE_I numeric(19,5), @NEARESTEMPLOYER_I numeric(19,5), @PREMMETHOD_I smallint, @PREMIUMEMPLOYEE_I numeric(19,5), @PREMIUMSPOUSE_I numeric(19,5), @PREMIUMCHILD_I numeric(19,5), @PREMIUMEMPLOYER_I numeric(19,5), @PREMIUMSMOKER_I numeric(19,5), @FACTOR_I smallint, @ROUNDUP_I tinyint, @PDLIFE_I tinyint, @CONTEMPMATCH_I numeric(19,5), @CONTRIBEMPLOYERMAX_I numeric(19,5), @MINAGE_I smallint, @BONUSELACTIVE_I tinyint, @LOANSALLOWED_I tinyint, @HARDSHPWITHDRAW_I tinyint, @TYPEOFCODE_I smallint, @CONTRIBDOLLAR_I numeric(19,5), @CONTRIBPERCENT_I numeric(19,5), @MAJMEDCOVERAGE_I smallint, @MAXOUTOFPOCKET_I numeric(19,5), @WAITINGPERIOD_I smallint, @BNFTMTHD smallint, @BNFFRMLA smallint, @BNFPRCNT_1 numeric(19,5), @BNFPRCNT_2 numeric(19,5), @BNFPRCNT_3 numeric(19,5), @BNFPRCNT_4 numeric(19,5), @BNFPRCNT_5 numeric(19,5), @DEDNMTHD smallint, @DEDFRMLA smallint, @DEDNPRCT_1 numeric(19,5), @DEDNPRCT_2 numeric(19,5), @DEDNPRCT_3 numeric(19,5), @DEDNPRCT_4 numeric(19,5), @DEDNPRCT_5 numeric(19,5), @DEPYPRMX numeric(19,5), @DEDYRMAX numeric(19,5), @DEDLTMAX numeric(19,5), @INACTBENEMPLOYEE tinyint, @INACTBENEMPLR tinyint, @GARNISHMENT tinyint, @Benefit_Fiscal_Max numeric(19,5), @Deduction_Fiscal_Yr_Max numeric(19,5), @LIFEINSURTYPE smallint, @OfferOfCoverageCode smallint, @SafeHarborCode smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .BE020230 (BENEFIT, DSCRIPTN, BENEFITSTATUS_I, COMPLETIONSTATUS_I, INACTIVE, BENEFITKIND_I, BNFBEGDT, BNFENDDT, VARBENFT, BNFTFREQ, CARRIER, GROUPNUMBER_I, PORTABLEBENEFIT_I, PORABLEINDEX_I, MAXAGEEMP_I, MAXAGEDEP_I, MAXAGESP_I, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, I1_I, I2_I, I3_I, I4_I, GB_I, COSTTOTAL_I, COSTCOBRA_I, BENAMOUNT_I, BENEFITDEDUCTIBLE_I, BNPAYPMX, BNFYRMAX, BNFLFMAX, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, NEAREST_I, NEARESTCHILD_I, NEARESTSPOUSE_I, NEARESTEMPLOYER_I, PREMMETHOD_I, PREMIUMEMPLOYEE_I, PREMIUMSPOUSE_I, PREMIUMCHILD_I, PREMIUMEMPLOYER_I, PREMIUMSMOKER_I, FACTOR_I, ROUNDUP_I, PDLIFE_I, CONTEMPMATCH_I, CONTRIBEMPLOYERMAX_I, MINAGE_I, BONUSELACTIVE_I, LOANSALLOWED_I, HARDSHPWITHDRAW_I, TYPEOFCODE_I, CONTRIBDOLLAR_I, CONTRIBPERCENT_I, MAJMEDCOVERAGE_I, MAXOUTOFPOCKET_I, WAITINGPERIOD_I, BNFTMTHD, BNFFRMLA, BNFPRCNT_1, BNFPRCNT_2, BNFPRCNT_3, BNFPRCNT_4, BNFPRCNT_5, DEDNMTHD, DEDFRMLA, DEDNPRCT_1, DEDNPRCT_2, DEDNPRCT_3, DEDNPRCT_4, DEDNPRCT_5, DEPYPRMX, DEDYRMAX, DEDLTMAX, INACTBENEMPLOYEE, INACTBENEMPLR, GARNISHMENT, Benefit_Fiscal_Max, Deduction_Fiscal_Yr_Max, LIFEINSURTYPE, OfferOfCoverageCode, SafeHarborCode) VALUES ( @BENEFIT, @DSCRIPTN, @BENEFITSTATUS_I, @COMPLETIONSTATUS_I, @INACTIVE, @BENEFITKIND_I, @BNFBEGDT, @BNFENDDT, @VARBENFT, @BNFTFREQ, @CARRIER, @GROUPNUMBER_I, @PORTABLEBENEFIT_I, @PORABLEINDEX_I, @MAXAGEEMP_I, @MAXAGEDEP_I, @MAXAGESP_I, @COSTEMPLOYEE_I, @COSTEMPLOYER_I, @COSTOTHER1_I, @COSTOTHER2_I, @I1_I, @I2_I, @I3_I, @I4_I, @GB_I, @COSTTOTAL_I, @COSTCOBRA_I, @BENAMOUNT_I, @BENEFITDEDUCTIBLE_I, @BNPAYPMX, @BNFYRMAX, @BNFLFMAX, @CHANGEBY_I, @CHANGEDATE_I, @NOTESINDEX_I, @NEAREST_I, @NEARESTCHILD_I, @NEARESTSPOUSE_I, @NEARESTEMPLOYER_I, @PREMMETHOD_I, @PREMIUMEMPLOYEE_I, @PREMIUMSPOUSE_I, @PREMIUMCHILD_I, @PREMIUMEMPLOYER_I, @PREMIUMSMOKER_I, @FACTOR_I, @ROUNDUP_I, @PDLIFE_I, @CONTEMPMATCH_I, @CONTRIBEMPLOYERMAX_I, @MINAGE_I, @BONUSELACTIVE_I, @LOANSALLOWED_I, @HARDSHPWITHDRAW_I, @TYPEOFCODE_I, @CONTRIBDOLLAR_I, @CONTRIBPERCENT_I, @MAJMEDCOVERAGE_I, @MAXOUTOFPOCKET_I, @WAITINGPERIOD_I, @BNFTMTHD, @BNFFRMLA, @BNFPRCNT_1, @BNFPRCNT_2, @BNFPRCNT_3, @BNFPRCNT_4, @BNFPRCNT_5, @DEDNMTHD, @DEDFRMLA, @DEDNPRCT_1, @DEDNPRCT_2, @DEDNPRCT_3, @DEDNPRCT_4, @DEDNPRCT_5, @DEPYPRMX, @DEDYRMAX, @DEDLTMAX, @INACTBENEMPLOYEE, @INACTBENEMPLR, @GARNISHMENT, @Benefit_Fiscal_Max, @Deduction_Fiscal_Yr_Max, @LIFEINSURTYPE, @OfferOfCoverageCode, @SafeHarborCode) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE020230SI] TO [DYNGRP]
GO