SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10000L_1] (@TCC_RS char(31), @TCC_RE char(31)) AS  set nocount on IF @TCC_RS IS NULL BEGIN SELECT TOP 25  TCC, TAXCOMDESC, NOTEINDX, SUPUNTREQD, DEX_ROW_ID FROM .VAT10000 ORDER BY TCC DESC END ELSE IF @TCC_RS = @TCC_RE BEGIN SELECT TOP 25  TCC, TAXCOMDESC, NOTEINDX, SUPUNTREQD, DEX_ROW_ID FROM .VAT10000 WHERE TCC = @TCC_RS ORDER BY TCC DESC END ELSE BEGIN SELECT TOP 25  TCC, TAXCOMDESC, NOTEINDX, SUPUNTREQD, DEX_ROW_ID FROM .VAT10000 WHERE TCC BETWEEN @TCC_RS AND @TCC_RE ORDER BY TCC DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10000L_1] TO [DYNGRP]
GO
