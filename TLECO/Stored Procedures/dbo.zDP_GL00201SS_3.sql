SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00201SS_3] (@ACTINDX int, @BUDGETID char(15), @PERIODDT datetime, @PERIODID smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  BUDGETID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODDT, PERIODID, BUDGETAMT, ACCATNUM, ACTINDX, YEAR1, DEX_ROW_TS, DEX_ROW_ID FROM .GL00201 WHERE ACTINDX = @ACTINDX AND BUDGETID = @BUDGETID AND PERIODDT = @PERIODDT AND PERIODID = @PERIODID ORDER BY ACTINDX ASC, BUDGETID ASC, PERIODDT ASC, PERIODID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00201SS_3] TO [DYNGRP]
GO
