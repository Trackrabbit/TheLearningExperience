SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK020130L_2] (@Query_Index_RS smallint, @Query_Index_RE smallint) AS  set nocount on IF @Query_Index_RS IS NULL BEGIN SELECT TOP 25  Query_Index, Query_Name, DEX_ROW_ID FROM .SK020130 ORDER BY Query_Index DESC END ELSE IF @Query_Index_RS = @Query_Index_RE BEGIN SELECT TOP 25  Query_Index, Query_Name, DEX_ROW_ID FROM .SK020130 WHERE Query_Index = @Query_Index_RS ORDER BY Query_Index DESC END ELSE BEGIN SELECT TOP 25  Query_Index, Query_Name, DEX_ROW_ID FROM .SK020130 WHERE Query_Index BETWEEN @Query_Index_RS AND @Query_Index_RE ORDER BY Query_Index DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK020130L_2] TO [DYNGRP]
GO
