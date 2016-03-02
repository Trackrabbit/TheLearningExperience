SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800L_1] (@aaAliasID_RS int, @aaAliasID_RE int) AS  set nocount on IF @aaAliasID_RS IS NULL BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 ORDER BY aaAliasID DESC END ELSE IF @aaAliasID_RS = @aaAliasID_RE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaAliasID = @aaAliasID_RS ORDER BY aaAliasID DESC END ELSE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaAliasID BETWEEN @aaAliasID_RS AND @aaAliasID_RE ORDER BY aaAliasID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800L_1] TO [DYNGRP]
GO
