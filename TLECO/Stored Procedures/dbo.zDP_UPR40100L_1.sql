SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40100L_1] (@FUTASUTA_RS char(3), @FUTASUTA_RE char(3)) AS  set nocount on IF @FUTASUTA_RS IS NULL BEGIN SELECT TOP 25  FUTASUTA, DSCRIPTN, EPRIDNBR, ESTIDNBR, FUSUTXRT, FUSUWLMT, INTXSHAN, INPRSTWG, NOTEINDX, Stat_Tax_ID, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, EmployerKind, DEX_ROW_ID FROM .UPR40100 ORDER BY FUTASUTA DESC END ELSE IF @FUTASUTA_RS = @FUTASUTA_RE BEGIN SELECT TOP 25  FUTASUTA, DSCRIPTN, EPRIDNBR, ESTIDNBR, FUSUTXRT, FUSUWLMT, INTXSHAN, INPRSTWG, NOTEINDX, Stat_Tax_ID, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, EmployerKind, DEX_ROW_ID FROM .UPR40100 WHERE FUTASUTA = @FUTASUTA_RS ORDER BY FUTASUTA DESC END ELSE BEGIN SELECT TOP 25  FUTASUTA, DSCRIPTN, EPRIDNBR, ESTIDNBR, FUSUTXRT, FUSUWLMT, INTXSHAN, INPRSTWG, NOTEINDX, Stat_Tax_ID, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, EmployerKind, DEX_ROW_ID FROM .UPR40100 WHERE FUTASUTA BETWEEN @FUTASUTA_RS AND @FUTASUTA_RE ORDER BY FUTASUTA DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40100L_1] TO [DYNGRP]
GO
