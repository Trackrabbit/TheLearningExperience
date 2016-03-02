SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00115N_3] (@BS int, @ITEMNMBR char(31), @MANUFACTURER char(31), @MNFCTRITMNMBR char(31), @DEX_ROW_ID int, @ITEMNMBR_RS char(31), @MANUFACTURER_RS char(31), @MNFCTRITMNMBR_RS char(31), @ITEMNMBR_RE char(31), @MANUFACTURER_RE char(31), @MNFCTRITMNMBR_RE char(31)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, PRIMARYITEM, DEX_ROW_ID FROM .IV00115 WHERE ( ITEMNMBR = @ITEMNMBR AND MANUFACTURER = @MANUFACTURER AND MNFCTRITMNMBR = @MNFCTRITMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND MANUFACTURER = @MANUFACTURER AND MNFCTRITMNMBR > @MNFCTRITMNMBR OR ITEMNMBR = @ITEMNMBR AND MANUFACTURER > @MANUFACTURER OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, MANUFACTURER ASC, MNFCTRITMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, PRIMARYITEM, DEX_ROW_ID FROM .IV00115 WHERE ITEMNMBR = @ITEMNMBR_RS AND MANUFACTURER BETWEEN @MANUFACTURER_RS AND @MANUFACTURER_RE AND MNFCTRITMNMBR BETWEEN @MNFCTRITMNMBR_RS AND @MNFCTRITMNMBR_RE AND ( ITEMNMBR = @ITEMNMBR AND MANUFACTURER = @MANUFACTURER AND MNFCTRITMNMBR = @MNFCTRITMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND MANUFACTURER = @MANUFACTURER AND MNFCTRITMNMBR > @MNFCTRITMNMBR OR ITEMNMBR = @ITEMNMBR AND MANUFACTURER > @MANUFACTURER OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, MANUFACTURER ASC, MNFCTRITMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, PRIMARYITEM, DEX_ROW_ID FROM .IV00115 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND MANUFACTURER BETWEEN @MANUFACTURER_RS AND @MANUFACTURER_RE AND MNFCTRITMNMBR BETWEEN @MNFCTRITMNMBR_RS AND @MNFCTRITMNMBR_RE AND ( ITEMNMBR = @ITEMNMBR AND MANUFACTURER = @MANUFACTURER AND MNFCTRITMNMBR = @MNFCTRITMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND MANUFACTURER = @MANUFACTURER AND MNFCTRITMNMBR > @MNFCTRITMNMBR OR ITEMNMBR = @ITEMNMBR AND MANUFACTURER > @MANUFACTURER OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, MANUFACTURER ASC, MNFCTRITMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00115N_3] TO [DYNGRP]
GO
