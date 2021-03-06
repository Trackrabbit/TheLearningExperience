SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40100SS_2] (@DSCRIPTN char(31), @FUTASUTA char(3)) AS  set nocount on SELECT TOP 1  FUTASUTA, DSCRIPTN, EPRIDNBR, ESTIDNBR, FUSUTXRT, FUSUWLMT, INTXSHAN, INPRSTWG, NOTEINDX, Stat_Tax_ID, TXENTYCD, OTHSTDAT, STCNTRLNUM, SUPPDAT1, SUPPDAT2, EmployerKind, DEX_ROW_ID FROM .UPR40100 WHERE DSCRIPTN = @DSCRIPTN AND FUTASUTA = @FUTASUTA ORDER BY DSCRIPTN ASC, FUTASUTA ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40100SS_2] TO [DYNGRP]
GO
