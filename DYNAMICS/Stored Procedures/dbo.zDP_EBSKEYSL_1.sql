SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_EBSKEYSL_1] (@EBSPRODUCT_RS char(21), @EBSPRODUCT_RE char(21)) AS  set nocount on IF @EBSPRODUCT_RS IS NULL BEGIN SELECT TOP 25  EBSKEYS, EBSPRODUCT, DEX_ROW_ID FROM .EBSKEYS ORDER BY EBSPRODUCT DESC END ELSE IF @EBSPRODUCT_RS = @EBSPRODUCT_RE BEGIN SELECT TOP 25  EBSKEYS, EBSPRODUCT, DEX_ROW_ID FROM .EBSKEYS WHERE EBSPRODUCT = @EBSPRODUCT_RS ORDER BY EBSPRODUCT DESC END ELSE BEGIN SELECT TOP 25  EBSKEYS, EBSPRODUCT, DEX_ROW_ID FROM .EBSKEYS WHERE EBSPRODUCT BETWEEN @EBSPRODUCT_RS AND @EBSPRODUCT_RE ORDER BY EBSPRODUCT DESC END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_EBSKEYSL_1] TO [DYNGRP]
GO
