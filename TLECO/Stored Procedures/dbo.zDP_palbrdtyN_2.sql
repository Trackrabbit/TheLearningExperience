SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbrdtyN_2] (@BS int, @IntegerValue smallint, @IntegerValue_RS smallint, @IntegerValue_RE smallint) AS  set nocount on IF @IntegerValue_RS IS NULL BEGIN SELECT TOP 25  IntegerValue, DSCRIPTN, DEX_ROW_ID FROM .palbrdty WHERE ( IntegerValue > @IntegerValue ) ORDER BY IntegerValue ASC END ELSE IF @IntegerValue_RS = @IntegerValue_RE BEGIN SELECT TOP 25  IntegerValue, DSCRIPTN, DEX_ROW_ID FROM .palbrdty WHERE IntegerValue = @IntegerValue_RS AND ( IntegerValue > @IntegerValue ) ORDER BY IntegerValue ASC END ELSE BEGIN SELECT TOP 25  IntegerValue, DSCRIPTN, DEX_ROW_ID FROM .palbrdty WHERE IntegerValue BETWEEN @IntegerValue_RS AND @IntegerValue_RE AND ( IntegerValue > @IntegerValue ) ORDER BY IntegerValue ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbrdtyN_2] TO [DYNGRP]
GO
