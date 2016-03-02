SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbsetpN_1] (@BS int, @IntegerValue smallint, @IntegerValue_RS smallint, @IntegerValue_RE smallint) AS  set nocount on IF @IntegerValue_RS IS NULL BEGIN SELECT TOP 25  IntegerValue, AutoOpenSalesDocWindow, AutoApplyInv, DEX_ROW_ID FROM .palbsetp WHERE ( IntegerValue > @IntegerValue ) ORDER BY IntegerValue ASC END ELSE IF @IntegerValue_RS = @IntegerValue_RE BEGIN SELECT TOP 25  IntegerValue, AutoOpenSalesDocWindow, AutoApplyInv, DEX_ROW_ID FROM .palbsetp WHERE IntegerValue = @IntegerValue_RS AND ( IntegerValue > @IntegerValue ) ORDER BY IntegerValue ASC END ELSE BEGIN SELECT TOP 25  IntegerValue, AutoOpenSalesDocWindow, AutoApplyInv, DEX_ROW_ID FROM .palbsetp WHERE IntegerValue BETWEEN @IntegerValue_RS AND @IntegerValue_RE AND ( IntegerValue > @IntegerValue ) ORDER BY IntegerValue ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbsetpN_1] TO [DYNGRP]
GO
