SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN13F_1] (@BENEFIT_RS char(7), @AGERANGE_I_RS smallint, @BENEFIT_RE char(7), @AGERANGE_I_RE smallint) AS  set nocount on IF @BENEFIT_RS IS NULL BEGIN SELECT TOP 25  BENEFIT, AGERANGE_I, PREMIUMEMPLOYEE_I, PREMIUMSMOKER_I, PREMIUMSPOUSE_I, PREMSMOKESPOUSE_I, DEX_ROW_ID FROM .HR2BEN13 ORDER BY BENEFIT ASC, AGERANGE_I ASC END ELSE IF @BENEFIT_RS = @BENEFIT_RE BEGIN SELECT TOP 25  BENEFIT, AGERANGE_I, PREMIUMEMPLOYEE_I, PREMIUMSMOKER_I, PREMIUMSPOUSE_I, PREMSMOKESPOUSE_I, DEX_ROW_ID FROM .HR2BEN13 WHERE BENEFIT = @BENEFIT_RS AND AGERANGE_I BETWEEN @AGERANGE_I_RS AND @AGERANGE_I_RE ORDER BY BENEFIT ASC, AGERANGE_I ASC END ELSE BEGIN SELECT TOP 25  BENEFIT, AGERANGE_I, PREMIUMEMPLOYEE_I, PREMIUMSMOKER_I, PREMIUMSPOUSE_I, PREMSMOKESPOUSE_I, DEX_ROW_ID FROM .HR2BEN13 WHERE BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND AGERANGE_I BETWEEN @AGERANGE_I_RS AND @AGERANGE_I_RE ORDER BY BENEFIT ASC, AGERANGE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN13F_1] TO [DYNGRP]
GO
