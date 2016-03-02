SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10140L_2] (@PONUMBER_RS char(17), @ORD_RS int, @INCLUDEITEM_RS tinyint, @PONUMBER_RE char(17), @ORD_RE int, @INCLUDEITEM_RE tinyint) AS  set nocount on IF @PONUMBER_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, ORD, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, CHANGED, INCLUDEITEM, DEX_ROW_ID FROM .POP10140 ORDER BY PONUMBER DESC, ORD DESC, INCLUDEITEM DESC, DEX_ROW_ID DESC END ELSE IF @PONUMBER_RS = @PONUMBER_RE BEGIN SELECT TOP 25  PONUMBER, ORD, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, CHANGED, INCLUDEITEM, DEX_ROW_ID FROM .POP10140 WHERE PONUMBER = @PONUMBER_RS AND ORD BETWEEN @ORD_RS AND @ORD_RE AND INCLUDEITEM BETWEEN @INCLUDEITEM_RS AND @INCLUDEITEM_RE ORDER BY PONUMBER DESC, ORD DESC, INCLUDEITEM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  PONUMBER, ORD, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, CHANGED, INCLUDEITEM, DEX_ROW_ID FROM .POP10140 WHERE PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE AND INCLUDEITEM BETWEEN @INCLUDEITEM_RS AND @INCLUDEITEM_RE ORDER BY PONUMBER DESC, ORD DESC, INCLUDEITEM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10140L_2] TO [DYNGRP]
GO
