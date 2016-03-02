SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbrdtyF_2] (@IntegerValue_RS smallint, @IntegerValue_RE smallint) AS  set nocount on IF @IntegerValue_RS IS NULL BEGIN SELECT TOP 25  IntegerValue, DSCRIPTN, DEX_ROW_ID FROM .palbrdty ORDER BY IntegerValue ASC END ELSE IF @IntegerValue_RS = @IntegerValue_RE BEGIN SELECT TOP 25  IntegerValue, DSCRIPTN, DEX_ROW_ID FROM .palbrdty WHERE IntegerValue = @IntegerValue_RS ORDER BY IntegerValue ASC END ELSE BEGIN SELECT TOP 25  IntegerValue, DSCRIPTN, DEX_ROW_ID FROM .palbrdty WHERE IntegerValue BETWEEN @IntegerValue_RS AND @IntegerValue_RE ORDER BY IntegerValue ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbrdtyF_2] TO [DYNGRP]
GO
