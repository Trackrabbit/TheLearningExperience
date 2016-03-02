SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbsetpL_1] (@IntegerValue_RS smallint, @IntegerValue_RE smallint) AS  set nocount on IF @IntegerValue_RS IS NULL BEGIN SELECT TOP 25  IntegerValue, AutoOpenSalesDocWindow, AutoApplyInv, DEX_ROW_ID FROM .palbsetp ORDER BY IntegerValue DESC END ELSE IF @IntegerValue_RS = @IntegerValue_RE BEGIN SELECT TOP 25  IntegerValue, AutoOpenSalesDocWindow, AutoApplyInv, DEX_ROW_ID FROM .palbsetp WHERE IntegerValue = @IntegerValue_RS ORDER BY IntegerValue DESC END ELSE BEGIN SELECT TOP 25  IntegerValue, AutoOpenSalesDocWindow, AutoApplyInv, DEX_ROW_ID FROM .palbsetp WHERE IntegerValue BETWEEN @IntegerValue_RS AND @IntegerValue_RE ORDER BY IntegerValue DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbsetpL_1] TO [DYNGRP]
GO
