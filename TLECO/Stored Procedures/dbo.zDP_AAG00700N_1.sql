SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00700N_1] (@BS int, @aaOption smallint, @aaOption_RS smallint, @aaOption_RE smallint) AS  set nocount on IF @aaOption_RS IS NULL BEGIN SELECT TOP 25  aaOption, aaMultiLangStr, aaIsOptionSet, DEX_ROW_ID FROM .AAG00700 WHERE ( aaOption > @aaOption ) ORDER BY aaOption ASC END ELSE IF @aaOption_RS = @aaOption_RE BEGIN SELECT TOP 25  aaOption, aaMultiLangStr, aaIsOptionSet, DEX_ROW_ID FROM .AAG00700 WHERE aaOption = @aaOption_RS AND ( aaOption > @aaOption ) ORDER BY aaOption ASC END ELSE BEGIN SELECT TOP 25  aaOption, aaMultiLangStr, aaIsOptionSet, DEX_ROW_ID FROM .AAG00700 WHERE aaOption BETWEEN @aaOption_RS AND @aaOption_RE AND ( aaOption > @aaOption ) ORDER BY aaOption ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00700N_1] TO [DYNGRP]
GO
