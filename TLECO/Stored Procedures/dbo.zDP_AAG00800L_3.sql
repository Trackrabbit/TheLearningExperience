SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800L_3] (@aaDescription_RS char(51), @aaDescription_RE char(51)) AS  set nocount on IF @aaDescription_RS IS NULL BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 ORDER BY aaDescription DESC, DEX_ROW_ID DESC END ELSE IF @aaDescription_RS = @aaDescription_RE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaDescription = @aaDescription_RS ORDER BY aaDescription DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaDescription BETWEEN @aaDescription_RS AND @aaDescription_RE ORDER BY aaDescription DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800L_3] TO [DYNGRP]
GO
