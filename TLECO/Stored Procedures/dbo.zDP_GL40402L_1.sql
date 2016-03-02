SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40402L_1] (@Reconciliation_Number_RS int, @SQNCLINE_RS numeric(19,5), @Reconciliation_Number_RE int, @SQNCLINE_RE numeric(19,5)) AS  set nocount on IF @Reconciliation_Number_RS IS NULL BEGIN SELECT TOP 25  Reconciliation_Number, SQNCLINE, MODULE1, ACTINDX, DEX_ROW_ID FROM .GL40402 ORDER BY Reconciliation_Number DESC, SQNCLINE DESC END ELSE IF @Reconciliation_Number_RS = @Reconciliation_Number_RE BEGIN SELECT TOP 25  Reconciliation_Number, SQNCLINE, MODULE1, ACTINDX, DEX_ROW_ID FROM .GL40402 WHERE Reconciliation_Number = @Reconciliation_Number_RS AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE ORDER BY Reconciliation_Number DESC, SQNCLINE DESC END ELSE BEGIN SELECT TOP 25  Reconciliation_Number, SQNCLINE, MODULE1, ACTINDX, DEX_ROW_ID FROM .GL40402 WHERE Reconciliation_Number BETWEEN @Reconciliation_Number_RS AND @Reconciliation_Number_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE ORDER BY Reconciliation_Number DESC, SQNCLINE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40402L_1] TO [DYNGRP]
GO
