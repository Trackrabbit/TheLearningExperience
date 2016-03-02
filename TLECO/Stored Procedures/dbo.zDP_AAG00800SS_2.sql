SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800SS_2] (@aaAlias char(31)) AS  set nocount on SELECT TOP 1  aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID, NOTEINDX, DEX_ROW_ID FROM .AAG00800 WHERE aaAlias = @aaAlias ORDER BY aaAlias ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800SS_2] TO [DYNGRP]
GO
