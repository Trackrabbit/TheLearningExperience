SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2BE04L_1] (@EMPID_I_RS char(15), @BENEFIT_RS char(7), @EMPID_I_RE char(15), @BENEFIT_RE char(7)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, BENEFIT, CHECK1_I, DATEDUE_I, COMMENTSTR10_I, CHECK3_I, CHECK4_I, CHECK5_I, DSCRIPTN, BENEFITCOST_I, BENEFITCOST2_I, IBENEFITAMOUNT_I, DEX_ROW_ID FROM .AHR2BE04 ORDER BY EMPID_I DESC, BENEFIT DESC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, CHECK1_I, DATEDUE_I, COMMENTSTR10_I, CHECK3_I, CHECK4_I, CHECK5_I, DSCRIPTN, BENEFITCOST_I, BENEFITCOST2_I, IBENEFITAMOUNT_I, DEX_ROW_ID FROM .AHR2BE04 WHERE EMPID_I = @EMPID_I_RS AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY EMPID_I DESC, BENEFIT DESC END ELSE BEGIN SELECT TOP 25  EMPID_I, BENEFIT, CHECK1_I, DATEDUE_I, COMMENTSTR10_I, CHECK3_I, CHECK4_I, CHECK5_I, DSCRIPTN, BENEFITCOST_I, BENEFITCOST2_I, IBENEFITAMOUNT_I, DEX_ROW_ID FROM .AHR2BE04 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE ORDER BY EMPID_I DESC, BENEFIT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2BE04L_1] TO [DYNGRP]
GO
