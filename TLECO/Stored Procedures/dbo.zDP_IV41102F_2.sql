SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41102F_2] (@Landed_Cost_ID_RS char(15), @Landed_Cost_Group_ID_RS char(15), @Landed_Cost_ID_RE char(15), @Landed_Cost_Group_ID_RE char(15)) AS  set nocount on IF @Landed_Cost_ID_RS IS NULL BEGIN SELECT TOP 25  Landed_Cost_Group_ID, Landed_Cost_ID, DEX_ROW_ID FROM .IV41102 ORDER BY Landed_Cost_ID ASC, Landed_Cost_Group_ID ASC END ELSE IF @Landed_Cost_ID_RS = @Landed_Cost_ID_RE BEGIN SELECT TOP 25  Landed_Cost_Group_ID, Landed_Cost_ID, DEX_ROW_ID FROM .IV41102 WHERE Landed_Cost_ID = @Landed_Cost_ID_RS AND Landed_Cost_Group_ID BETWEEN @Landed_Cost_Group_ID_RS AND @Landed_Cost_Group_ID_RE ORDER BY Landed_Cost_ID ASC, Landed_Cost_Group_ID ASC END ELSE BEGIN SELECT TOP 25  Landed_Cost_Group_ID, Landed_Cost_ID, DEX_ROW_ID FROM .IV41102 WHERE Landed_Cost_ID BETWEEN @Landed_Cost_ID_RS AND @Landed_Cost_ID_RE AND Landed_Cost_Group_ID BETWEEN @Landed_Cost_Group_ID_RS AND @Landed_Cost_Group_ID_RE ORDER BY Landed_Cost_ID ASC, Landed_Cost_Group_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41102F_2] TO [DYNGRP]
GO
