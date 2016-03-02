SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01990SI] (@ScbGroupType smallint, @ScbOwnerID char(15), @ScbNodeID smallint, @ScbParentNodeID smallint, @ScbShortcutType smallint, @ScbSubType smallint, @ScbDisplayName char(79), @ScbShortcutKey smallint, @ScbTargetStringOne char(255), @ScbTargetStringTwo char(255), @ScbTargetStringThree char(255), @ScbTargetLongOne int, @ScbTargetLongTwo int, @ScbTargetLongThree int, @ScbTargetLongFour int, @ScbTargetLongFive int, @ScbCompanyID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01990 (ScbGroupType, ScbOwnerID, ScbNodeID, ScbParentNodeID, ScbShortcutType, ScbSubType, ScbDisplayName, ScbShortcutKey, ScbTargetStringOne, ScbTargetStringTwo, ScbTargetStringThree, ScbTargetLongOne, ScbTargetLongTwo, ScbTargetLongThree, ScbTargetLongFour, ScbTargetLongFive, ScbCompanyID) VALUES ( @ScbGroupType, @ScbOwnerID, @ScbNodeID, @ScbParentNodeID, @ScbShortcutType, @ScbSubType, @ScbDisplayName, @ScbShortcutKey, @ScbTargetStringOne, @ScbTargetStringTwo, @ScbTargetStringThree, @ScbTargetLongOne, @ScbTargetLongTwo, @ScbTargetLongThree, @ScbTargetLongFour, @ScbTargetLongFive, @ScbCompanyID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01990SI] TO [DYNGRP]
GO
