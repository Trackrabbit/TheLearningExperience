SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40900N_1] (@BS int, @PriceGroup char(11), @PriceGroup_RS char(11), @PriceGroup_RE char(11)) AS  set nocount on IF @PriceGroup_RS IS NULL BEGIN SELECT TOP 25  PriceGroup, DSCRIPTN, CREATDDT, MODIFDT, NOTEINDX, DEX_ROW_ID FROM .IV40900 WHERE ( PriceGroup > @PriceGroup ) ORDER BY PriceGroup ASC END ELSE IF @PriceGroup_RS = @PriceGroup_RE BEGIN SELECT TOP 25  PriceGroup, DSCRIPTN, CREATDDT, MODIFDT, NOTEINDX, DEX_ROW_ID FROM .IV40900 WHERE PriceGroup = @PriceGroup_RS AND ( PriceGroup > @PriceGroup ) ORDER BY PriceGroup ASC END ELSE BEGIN SELECT TOP 25  PriceGroup, DSCRIPTN, CREATDDT, MODIFDT, NOTEINDX, DEX_ROW_ID FROM .IV40900 WHERE PriceGroup BETWEEN @PriceGroup_RS AND @PriceGroup_RE AND ( PriceGroup > @PriceGroup ) ORDER BY PriceGroup ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40900N_1] TO [DYNGRP]
GO
