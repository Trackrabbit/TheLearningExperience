SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00603SS_2] (@USERID char(15), @aaNode char(51)) AS  set nocount on SELECT TOP 1  USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status, DEX_ROW_ID FROM .AAG00603 WHERE USERID = @USERID AND aaNode = @aaNode ORDER BY USERID ASC, aaNode ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00603SS_2] TO [DYNGRP]
GO
