SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00115L_2] (@ITEMNMBR_RS char(31), @PRIMARYITEM_RS tinyint, @ITEMNMBR_RE char(31), @PRIMARYITEM_RE tinyint) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, PRIMARYITEM, DEX_ROW_ID FROM .IV00115 ORDER BY ITEMNMBR DESC, PRIMARYITEM DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, PRIMARYITEM, DEX_ROW_ID FROM .IV00115 WHERE ITEMNMBR = @ITEMNMBR_RS AND PRIMARYITEM BETWEEN @PRIMARYITEM_RS AND @PRIMARYITEM_RE ORDER BY ITEMNMBR DESC, PRIMARYITEM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, PRIMARYITEM, DEX_ROW_ID FROM .IV00115 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND PRIMARYITEM BETWEEN @PRIMARYITEM_RS AND @PRIMARYITEM_RE ORDER BY ITEMNMBR DESC, PRIMARYITEM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00115L_2] TO [DYNGRP]
GO
