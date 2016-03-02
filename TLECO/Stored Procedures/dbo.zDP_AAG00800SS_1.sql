SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800SS_1] (@aaAliasID int) AS  set nocount on SELECT TOP 1  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaAliasID = @aaAliasID ORDER BY aaAliasID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800SS_1] TO [DYNGRP]
GO
