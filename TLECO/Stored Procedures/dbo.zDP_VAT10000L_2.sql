SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10000L_2] (@TAXCOMDESC_RS char(31), @TAXCOMDESC_RE char(31)) AS  set nocount on IF @TAXCOMDESC_RS IS NULL BEGIN SELECT TOP 25  TCC, TAXCOMDESC, NOTEINDX, SUPUNTREQD, DEX_ROW_ID FROM .VAT10000 ORDER BY TAXCOMDESC DESC, DEX_ROW_ID DESC END ELSE IF @TAXCOMDESC_RS = @TAXCOMDESC_RE BEGIN SELECT TOP 25  TCC, TAXCOMDESC, NOTEINDX, SUPUNTREQD, DEX_ROW_ID FROM .VAT10000 WHERE TAXCOMDESC = @TAXCOMDESC_RS ORDER BY TAXCOMDESC DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TCC, TAXCOMDESC, NOTEINDX, SUPUNTREQD, DEX_ROW_ID FROM .VAT10000 WHERE TAXCOMDESC BETWEEN @TAXCOMDESC_RS AND @TAXCOMDESC_RE ORDER BY TAXCOMDESC DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10000L_2] TO [DYNGRP]
GO