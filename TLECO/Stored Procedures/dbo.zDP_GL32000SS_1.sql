SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL32000SS_1] (@JRNENTRY int, @BUDGETID char(15), @ACTINDX int, @PERIODDT datetime, @PERIODID smallint) AS  set nocount on SELECT TOP 1  JRNENTRY, BUDGETID, YEAR1, PERIODDT, PERIODID, ACTINDX, BUDGETAMT, BudgerAdjustment, REFRENCE, TRXDATE, SOURCDOC, TRXSORCE, USWHPSTD, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL32000 WHERE JRNENTRY = @JRNENTRY AND BUDGETID = @BUDGETID AND ACTINDX = @ACTINDX AND PERIODDT = @PERIODDT AND PERIODID = @PERIODID ORDER BY JRNENTRY ASC, BUDGETID ASC, ACTINDX ASC, PERIODDT ASC, PERIODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL32000SS_1] TO [DYNGRP]
GO
