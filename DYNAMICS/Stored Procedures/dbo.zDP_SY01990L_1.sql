SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01990L_1] (@ScbGroupType_RS smallint, @ScbOwnerID_RS char(15), @ScbNodeID_RS smallint, @ScbGroupType_RE smallint, @ScbOwnerID_RE char(15), @ScbNodeID_RE smallint) AS  set nocount on IF @ScbGroupType_RS IS NULL BEGIN SELECT TOP 25  ScbGroupType, ScbOwnerID, ScbNodeID, ScbParentNodeID, ScbShortcutType, ScbSubType, ScbDisplayName, ScbShortcutKey, ScbTargetStringOne, ScbTargetStringTwo, ScbTargetStringThree, ScbTargetLongOne, ScbTargetLongTwo, ScbTargetLongThree, ScbTargetLongFour, ScbTargetLongFive, ScbCompanyID, DEX_ROW_ID FROM .SY01990 ORDER BY ScbGroupType DESC, ScbOwnerID DESC, ScbNodeID DESC END ELSE IF @ScbGroupType_RS = @ScbGroupType_RE BEGIN SELECT TOP 25  ScbGroupType, ScbOwnerID, ScbNodeID, ScbParentNodeID, ScbShortcutType, ScbSubType, ScbDisplayName, ScbShortcutKey, ScbTargetStringOne, ScbTargetStringTwo, ScbTargetStringThree, ScbTargetLongOne, ScbTargetLongTwo, ScbTargetLongThree, ScbTargetLongFour, ScbTargetLongFive, ScbCompanyID, DEX_ROW_ID FROM .SY01990 WHERE ScbGroupType = @ScbGroupType_RS AND ScbOwnerID BETWEEN @ScbOwnerID_RS AND @ScbOwnerID_RE AND ScbNodeID BETWEEN @ScbNodeID_RS AND @ScbNodeID_RE ORDER BY ScbGroupType DESC, ScbOwnerID DESC, ScbNodeID DESC END ELSE BEGIN SELECT TOP 25  ScbGroupType, ScbOwnerID, ScbNodeID, ScbParentNodeID, ScbShortcutType, ScbSubType, ScbDisplayName, ScbShortcutKey, ScbTargetStringOne, ScbTargetStringTwo, ScbTargetStringThree, ScbTargetLongOne, ScbTargetLongTwo, ScbTargetLongThree, ScbTargetLongFour, ScbTargetLongFive, ScbCompanyID, DEX_ROW_ID FROM .SY01990 WHERE ScbGroupType BETWEEN @ScbGroupType_RS AND @ScbGroupType_RE AND ScbOwnerID BETWEEN @ScbOwnerID_RS AND @ScbOwnerID_RE AND ScbNodeID BETWEEN @ScbNodeID_RS AND @ScbNodeID_RE ORDER BY ScbGroupType DESC, ScbOwnerID DESC, ScbNodeID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01990L_1] TO [DYNGRP]
GO