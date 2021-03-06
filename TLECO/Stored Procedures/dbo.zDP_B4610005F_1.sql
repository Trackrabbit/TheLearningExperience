SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610005F_1] (@BSSI_Category_RS char(31), @BSSI_Category_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Category_RS IS NULL BEGIN SELECT TOP 25  BSSI_Category, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4610005 ORDER BY BSSI_Category ASC END ELSE IF @BSSI_Category_RS = @BSSI_Category_RE BEGIN SELECT TOP 25  BSSI_Category, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4610005 WHERE BSSI_Category = @BSSI_Category_RS ORDER BY BSSI_Category ASC END ELSE BEGIN SELECT TOP 25  BSSI_Category, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4610005 WHERE BSSI_Category BETWEEN @BSSI_Category_RS AND @BSSI_Category_RE ORDER BY BSSI_Category ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610005F_1] TO [DYNGRP]
GO
