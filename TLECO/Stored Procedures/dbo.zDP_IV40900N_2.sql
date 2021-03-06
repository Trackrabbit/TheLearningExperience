SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40900N_2] (@BS int, @DSCRIPTN char(31), @PriceGroup char(11), @DSCRIPTN_RS char(31), @PriceGroup_RS char(11), @DSCRIPTN_RE char(31), @PriceGroup_RE char(11)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  PriceGroup, DSCRIPTN, CREATDDT, MODIFDT, NOTEINDX, DEX_ROW_ID FROM .IV40900 WHERE ( DSCRIPTN = @DSCRIPTN AND PriceGroup > @PriceGroup OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, PriceGroup ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  PriceGroup, DSCRIPTN, CREATDDT, MODIFDT, NOTEINDX, DEX_ROW_ID FROM .IV40900 WHERE DSCRIPTN = @DSCRIPTN_RS AND PriceGroup BETWEEN @PriceGroup_RS AND @PriceGroup_RE AND ( DSCRIPTN = @DSCRIPTN AND PriceGroup > @PriceGroup OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, PriceGroup ASC END ELSE BEGIN SELECT TOP 25  PriceGroup, DSCRIPTN, CREATDDT, MODIFDT, NOTEINDX, DEX_ROW_ID FROM .IV40900 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND PriceGroup BETWEEN @PriceGroup_RS AND @PriceGroup_RE AND ( DSCRIPTN = @DSCRIPTN AND PriceGroup > @PriceGroup OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, PriceGroup ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40900N_2] TO [DYNGRP]
GO
