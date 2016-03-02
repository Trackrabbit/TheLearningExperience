SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00700L_1] (@aaOption_RS smallint, @aaOption_RE smallint) AS  set nocount on IF @aaOption_RS IS NULL BEGIN SELECT TOP 25  aaOption, aaMultiLangStr, aaIsOptionSet, DEX_ROW_ID FROM .AAG00700 ORDER BY aaOption DESC END ELSE IF @aaOption_RS = @aaOption_RE BEGIN SELECT TOP 25  aaOption, aaMultiLangStr, aaIsOptionSet, DEX_ROW_ID FROM .AAG00700 WHERE aaOption = @aaOption_RS ORDER BY aaOption DESC END ELSE BEGIN SELECT TOP 25  aaOption, aaMultiLangStr, aaIsOptionSet, DEX_ROW_ID FROM .AAG00700 WHERE aaOption BETWEEN @aaOption_RS AND @aaOption_RE ORDER BY aaOption DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00700L_1] TO [DYNGRP]
GO
