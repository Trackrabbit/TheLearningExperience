SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000005N_1] (@BS int, @LK_Group char(31), @LK_Link_No int, @LK_Group_RS char(31), @LK_Link_No_RS int, @LK_Group_RE char(31), @LK_Link_No_RE int) AS  set nocount on IF @LK_Group_RS IS NULL BEGIN SELECT TOP 25  LK_Group, LK_Link_No, DEX_ROW_ID FROM .LK000005 WHERE ( LK_Group = @LK_Group AND LK_Link_No > @LK_Link_No OR LK_Group > @LK_Group ) ORDER BY LK_Group ASC, LK_Link_No ASC END ELSE IF @LK_Group_RS = @LK_Group_RE BEGIN SELECT TOP 25  LK_Group, LK_Link_No, DEX_ROW_ID FROM .LK000005 WHERE LK_Group = @LK_Group_RS AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND ( LK_Group = @LK_Group AND LK_Link_No > @LK_Link_No OR LK_Group > @LK_Group ) ORDER BY LK_Group ASC, LK_Link_No ASC END ELSE BEGIN SELECT TOP 25  LK_Group, LK_Link_No, DEX_ROW_ID FROM .LK000005 WHERE LK_Group BETWEEN @LK_Group_RS AND @LK_Group_RE AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND ( LK_Group = @LK_Group AND LK_Link_No > @LK_Link_No OR LK_Group > @LK_Group ) ORDER BY LK_Group ASC, LK_Link_No ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000005N_1] TO [DYNGRP]
GO
