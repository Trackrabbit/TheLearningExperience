SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK020130F_1] (@Query_Name_RS char(31), @Query_Name_RE char(31)) AS  set nocount on IF @Query_Name_RS IS NULL BEGIN SELECT TOP 25  Query_Index, Query_Name, DEX_ROW_ID FROM .SK020130 ORDER BY Query_Name ASC END ELSE IF @Query_Name_RS = @Query_Name_RE BEGIN SELECT TOP 25  Query_Index, Query_Name, DEX_ROW_ID FROM .SK020130 WHERE Query_Name = @Query_Name_RS ORDER BY Query_Name ASC END ELSE BEGIN SELECT TOP 25  Query_Index, Query_Name, DEX_ROW_ID FROM .SK020130 WHERE Query_Name BETWEEN @Query_Name_RS AND @Query_Name_RE ORDER BY Query_Name ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK020130F_1] TO [DYNGRP]
GO
