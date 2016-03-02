SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10109N_2] (@BS int, @DESCEXPR char(51), @DEX_ROW_ID int, @DESCEXPR_RS char(51), @DESCEXPR_RE char(51)) AS  set nocount on IF @DESCEXPR_RS IS NULL BEGIN SELECT TOP 25  PRCBKID, DESCEXPR, ISBASE, NOTEINDX, DEX_ROW_ID FROM .SOP10109 WHERE ( DESCEXPR = @DESCEXPR AND DEX_ROW_ID > @DEX_ROW_ID OR DESCEXPR > @DESCEXPR ) ORDER BY DESCEXPR ASC, DEX_ROW_ID ASC END ELSE IF @DESCEXPR_RS = @DESCEXPR_RE BEGIN SELECT TOP 25  PRCBKID, DESCEXPR, ISBASE, NOTEINDX, DEX_ROW_ID FROM .SOP10109 WHERE DESCEXPR = @DESCEXPR_RS AND ( DESCEXPR = @DESCEXPR AND DEX_ROW_ID > @DEX_ROW_ID OR DESCEXPR > @DESCEXPR ) ORDER BY DESCEXPR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRCBKID, DESCEXPR, ISBASE, NOTEINDX, DEX_ROW_ID FROM .SOP10109 WHERE DESCEXPR BETWEEN @DESCEXPR_RS AND @DESCEXPR_RE AND ( DESCEXPR = @DESCEXPR AND DEX_ROW_ID > @DEX_ROW_ID OR DESCEXPR > @DESCEXPR ) ORDER BY DESCEXPR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10109N_2] TO [DYNGRP]
GO