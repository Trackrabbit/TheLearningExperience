SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800N_1] (@BS int, @aaAliasID int, @aaAliasID_RS int, @aaAliasID_RE int) AS  set nocount on IF @aaAliasID_RS IS NULL BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE ( aaAliasID > @aaAliasID ) ORDER BY aaAliasID ASC END ELSE IF @aaAliasID_RS = @aaAliasID_RE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaAliasID = @aaAliasID_RS AND ( aaAliasID > @aaAliasID ) ORDER BY aaAliasID ASC END ELSE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaAliasID BETWEEN @aaAliasID_RS AND @aaAliasID_RE AND ( aaAliasID > @aaAliasID ) ORDER BY aaAliasID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800N_1] TO [DYNGRP]
GO
