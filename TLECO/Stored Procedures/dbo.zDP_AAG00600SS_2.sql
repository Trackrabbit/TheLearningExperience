SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00600SS_2] (@aaTree char(61)) AS  set nocount on SELECT TOP 1  aaTreeID, aaTree, aaLinkType, aaDimID, aaTreeDescr, aaTreeMain, aaTreeInclAllRec, NOTEINDX, DEX_ROW_ID FROM .AAG00600 WHERE aaTree = @aaTree ORDER BY aaTree ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00600SS_2] TO [DYNGRP]
GO
