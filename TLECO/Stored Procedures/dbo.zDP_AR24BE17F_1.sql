SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AR24BE17F_1] (@EMPID_I_RS char(15), @BNFBEGDT_RS datetime, @BENEFIT_RS char(7), @I1_I_RS smallint, @EMPID_I_RE char(15), @BNFBEGDT_RE datetime, @BENEFIT_RE char(7), @I1_I_RE smallint) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I1_I, BENEFICIARYPRIMARY_I, BENCONTINGENT_I, NAMEA15_I, NAMEB15_I, NAMEA50_I, AGEEMPLOYEE_I, AGESPOUSE_I, CHILDREN_I, LIFEAMTMAX_I, LIFEAMTMAXSPOUSE_I, LIFEAMTMAXCHILD_I, NEAREST_I, NEARESTSPOUSE_I, NEARESTCHILD_I, BNFTFREQ, SMOKER_I, SMOKERSP_I, GB_I, NEARESTEMPLOYER_I, PREMIUMEMPLOYER_I, PREMIUMEMPLOYEE_I, PREMIUMSMOKER_I, PREMIUMSPOUSE_I, PREMSMOKESPOUSE_I, PREMIUMCHILD_I, LIFEINSURTYPE, DEX_ROW_ID FROM .AR24BE17 ORDER BY EMPID_I ASC, BNFBEGDT ASC, BENEFIT ASC, I1_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I1_I, BENEFICIARYPRIMARY_I, BENCONTINGENT_I, NAMEA15_I, NAMEB15_I, NAMEA50_I, AGEEMPLOYEE_I, AGESPOUSE_I, CHILDREN_I, LIFEAMTMAX_I, LIFEAMTMAXSPOUSE_I, LIFEAMTMAXCHILD_I, NEAREST_I, NEARESTSPOUSE_I, NEARESTCHILD_I, BNFTFREQ, SMOKER_I, SMOKERSP_I, GB_I, NEARESTEMPLOYER_I, PREMIUMEMPLOYER_I, PREMIUMEMPLOYEE_I, PREMIUMSMOKER_I, PREMIUMSPOUSE_I, PREMSMOKESPOUSE_I, PREMIUMCHILD_I, LIFEINSURTYPE, DEX_ROW_ID FROM .AR24BE17 WHERE EMPID_I = @EMPID_I_RS AND BNFBEGDT BETWEEN @BNFBEGDT_RS AND @BNFBEGDT_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND I1_I BETWEEN @I1_I_RS AND @I1_I_RE ORDER BY EMPID_I ASC, BNFBEGDT ASC, BENEFIT ASC, I1_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, BNFBEGDT, BENEFIT, I1_I, BENEFICIARYPRIMARY_I, BENCONTINGENT_I, NAMEA15_I, NAMEB15_I, NAMEA50_I, AGEEMPLOYEE_I, AGESPOUSE_I, CHILDREN_I, LIFEAMTMAX_I, LIFEAMTMAXSPOUSE_I, LIFEAMTMAXCHILD_I, NEAREST_I, NEARESTSPOUSE_I, NEARESTCHILD_I, BNFTFREQ, SMOKER_I, SMOKERSP_I, GB_I, NEARESTEMPLOYER_I, PREMIUMEMPLOYER_I, PREMIUMEMPLOYEE_I, PREMIUMSMOKER_I, PREMIUMSPOUSE_I, PREMSMOKESPOUSE_I, PREMIUMCHILD_I, LIFEINSURTYPE, DEX_ROW_ID FROM .AR24BE17 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND BNFBEGDT BETWEEN @BNFBEGDT_RS AND @BNFBEGDT_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND I1_I BETWEEN @I1_I_RS AND @I1_I_RE ORDER BY EMPID_I ASC, BNFBEGDT ASC, BENEFIT ASC, I1_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AR24BE17F_1] TO [DYNGRP]
GO
