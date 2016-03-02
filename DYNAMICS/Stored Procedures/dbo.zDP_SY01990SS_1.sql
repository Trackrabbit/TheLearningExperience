SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01990SS_1] (@ScbGroupType smallint, @ScbOwnerID char(15), @ScbNodeID smallint) AS  set nocount on SELECT TOP 1  ScbGroupType, ScbOwnerID, ScbNodeID, ScbParentNodeID, ScbShortcutType, ScbSubType, ScbDisplayName, ScbShortcutKey, ScbTargetStringOne, ScbTargetStringTwo, ScbTargetStringThree, ScbTargetLongOne, ScbTargetLongTwo, ScbTargetLongThree, ScbTargetLongFour, ScbTargetLongFive, ScbCompanyID, DEX_ROW_ID FROM .SY01990 WHERE ScbGroupType = @ScbGroupType AND ScbOwnerID = @ScbOwnerID AND ScbNodeID = @ScbNodeID ORDER BY ScbGroupType ASC, ScbOwnerID ASC, ScbNodeID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01990SS_1] TO [DYNGRP]
GO
