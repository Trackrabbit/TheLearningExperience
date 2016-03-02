SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN14L_2] (@BENEFITTYPE_I_RS char(7), @BENEFITTYPE_I_RE char(7)) AS  set nocount on IF @BENEFITTYPE_I_RS IS NULL BEGIN SELECT TOP 25  IINDEX_I, BENEFITTYPE_I, DSCRIPTN, DEX_ROW_ID FROM .HR2BEN14 ORDER BY BENEFITTYPE_I DESC, DEX_ROW_ID DESC END ELSE IF @BENEFITTYPE_I_RS = @BENEFITTYPE_I_RE BEGIN SELECT TOP 25  IINDEX_I, BENEFITTYPE_I, DSCRIPTN, DEX_ROW_ID FROM .HR2BEN14 WHERE BENEFITTYPE_I = @BENEFITTYPE_I_RS ORDER BY BENEFITTYPE_I DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  IINDEX_I, BENEFITTYPE_I, DSCRIPTN, DEX_ROW_ID FROM .HR2BEN14 WHERE BENEFITTYPE_I BETWEEN @BENEFITTYPE_I_RS AND @BENEFITTYPE_I_RE ORDER BY BENEFITTYPE_I DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN14L_2] TO [DYNGRP]
GO