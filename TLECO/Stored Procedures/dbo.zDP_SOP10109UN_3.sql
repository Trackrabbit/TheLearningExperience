SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10109UN_3] (@BS int, @ISBASE tinyint, @ISBASE_RS tinyint, @ISBASE_RE tinyint) AS  set nocount on IF @ISBASE_RS IS NULL BEGIN SELECT TOP 25  PRCBKID, DESCEXPR, ISBASE, NOTEINDX, DEX_ROW_ID FROM .SOP10109 WHERE ( ISBASE > @ISBASE ) ORDER BY ISBASE ASC, DEX_ROW_ID ASC END ELSE IF @ISBASE_RS = @ISBASE_RE BEGIN SELECT TOP 25  PRCBKID, DESCEXPR, ISBASE, NOTEINDX, DEX_ROW_ID FROM .SOP10109 WHERE ISBASE = @ISBASE_RS AND ( ISBASE > @ISBASE ) ORDER BY ISBASE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRCBKID, DESCEXPR, ISBASE, NOTEINDX, DEX_ROW_ID FROM .SOP10109 WHERE ISBASE BETWEEN @ISBASE_RS AND @ISBASE_RE AND ( ISBASE > @ISBASE ) ORDER BY ISBASE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10109UN_3] TO [DYNGRP]
GO
