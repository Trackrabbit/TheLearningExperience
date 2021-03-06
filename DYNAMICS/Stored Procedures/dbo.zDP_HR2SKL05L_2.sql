SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2SKL05L_2] (@SKILLSET_I_RS char(31), @SKILLSET_I_RE char(31)) AS  set nocount on IF @SKILLSET_I_RS IS NULL BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLSET_I, NUMBERAVAILABLE_I, DEX_ROW_ID FROM .HR2SKL05 ORDER BY SKILLSET_I DESC END ELSE IF @SKILLSET_I_RS = @SKILLSET_I_RE BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLSET_I, NUMBERAVAILABLE_I, DEX_ROW_ID FROM .HR2SKL05 WHERE SKILLSET_I = @SKILLSET_I_RS ORDER BY SKILLSET_I DESC END ELSE BEGIN SELECT TOP 25  SKILLSETNUMBER_I, SKILLSET_I, NUMBERAVAILABLE_I, DEX_ROW_ID FROM .HR2SKL05 WHERE SKILLSET_I BETWEEN @SKILLSET_I_RS AND @SKILLSET_I_RE ORDER BY SKILLSET_I DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2SKL05L_2] TO [DYNGRP]
GO
