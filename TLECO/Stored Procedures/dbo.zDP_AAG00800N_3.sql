SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800N_3] (@BS int, @aaDescription char(51), @DEX_ROW_ID int, @aaDescription_RS char(51), @aaDescription_RE char(51)) AS  set nocount on IF @aaDescription_RS IS NULL BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE ( aaDescription = @aaDescription AND DEX_ROW_ID > @DEX_ROW_ID OR aaDescription > @aaDescription ) ORDER BY aaDescription ASC, DEX_ROW_ID ASC END ELSE IF @aaDescription_RS = @aaDescription_RE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaDescription = @aaDescription_RS AND ( aaDescription = @aaDescription AND DEX_ROW_ID > @DEX_ROW_ID OR aaDescription > @aaDescription ) ORDER BY aaDescription ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaDescription BETWEEN @aaDescription_RS AND @aaDescription_RE AND ( aaDescription = @aaDescription AND DEX_ROW_ID > @DEX_ROW_ID OR aaDescription > @aaDescription ) ORDER BY aaDescription ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800N_3] TO [DYNGRP]
GO
