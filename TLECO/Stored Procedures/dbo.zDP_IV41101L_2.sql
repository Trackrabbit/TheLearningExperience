SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41101L_2] (@Long_Description_RS char(51), @Landed_Cost_Group_ID_RS char(15), @Long_Description_RE char(51), @Landed_Cost_Group_ID_RE char(15)) AS  set nocount on IF @Long_Description_RS IS NULL BEGIN SELECT TOP 25  Landed_Cost_Group_ID, Long_Description, NOTEINDX, DEX_ROW_ID FROM .IV41101 ORDER BY Long_Description DESC, Landed_Cost_Group_ID DESC END ELSE IF @Long_Description_RS = @Long_Description_RE BEGIN SELECT TOP 25  Landed_Cost_Group_ID, Long_Description, NOTEINDX, DEX_ROW_ID FROM .IV41101 WHERE Long_Description = @Long_Description_RS AND Landed_Cost_Group_ID BETWEEN @Landed_Cost_Group_ID_RS AND @Landed_Cost_Group_ID_RE ORDER BY Long_Description DESC, Landed_Cost_Group_ID DESC END ELSE BEGIN SELECT TOP 25  Landed_Cost_Group_ID, Long_Description, NOTEINDX, DEX_ROW_ID FROM .IV41101 WHERE Long_Description BETWEEN @Long_Description_RS AND @Long_Description_RE AND Landed_Cost_Group_ID BETWEEN @Landed_Cost_Group_ID_RS AND @Landed_Cost_Group_ID_RE ORDER BY Long_Description DESC, Landed_Cost_Group_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41101L_2] TO [DYNGRP]
GO
