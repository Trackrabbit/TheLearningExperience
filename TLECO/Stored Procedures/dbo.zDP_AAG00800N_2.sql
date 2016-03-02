SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800N_2] (@BS int, @aaAlias char(31), @aaAlias_RS char(31), @aaAlias_RE char(31)) AS  set nocount on IF @aaAlias_RS IS NULL BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE ( aaAlias > @aaAlias ) ORDER BY aaAlias ASC END ELSE IF @aaAlias_RS = @aaAlias_RE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaAlias = @aaAlias_RS AND ( aaAlias > @aaAlias ) ORDER BY aaAlias ASC END ELSE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaAlias BETWEEN @aaAlias_RS AND @aaAlias_RE AND ( aaAlias > @aaAlias ) ORDER BY aaAlias ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800N_2] TO [DYNGRP]
GO
