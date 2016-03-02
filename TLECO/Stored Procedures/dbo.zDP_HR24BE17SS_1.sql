SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR24BE17SS_1] (@EMPID_I char(15), @BNFBEGDT datetime, @BENEFIT char(7), @I1_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, BNFBEGDT, BENEFIT, I1_I, BENEFICIARYPRIMARY_I, BENCONTINGENT_I, NAMEA15_I, NAMEB15_I, NAMEA50_I, AGEEMPLOYEE_I, AGESPOUSE_I, CHILDREN_I, LIFEAMTMAX_I, LIFEAMTMAXSPOUSE_I, LIFEAMTMAXCHILD_I, NEAREST_I, NEARESTSPOUSE_I, NEARESTCHILD_I, BNFTFREQ, SMOKER_I, SMOKERSP_I, GB_I, NEARESTEMPLOYER_I, PREMIUMEMPLOYER_I, PREMIUMEMPLOYEE_I, PREMIUMSMOKER_I, PREMIUMSPOUSE_I, PREMSMOKESPOUSE_I, PREMIUMCHILD_I, LIFEINSURTYPE, DEX_ROW_ID FROM .HR24BE17 WHERE EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I1_I = @I1_I ORDER BY EMPID_I ASC, BNFBEGDT ASC, BENEFIT ASC, I1_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR24BE17SS_1] TO [DYNGRP]
GO