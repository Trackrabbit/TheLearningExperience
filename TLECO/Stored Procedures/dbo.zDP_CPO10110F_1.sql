SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO10110F_1] (@PONUMBER_RS char(17), @ORD_RS int, @PONUMBER_RE char(17), @ORD_RE int) AS  set nocount on IF @PONUMBER_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, ORD, ACTINDX, REQDATE, VENDORID, APPROVL, Committed_Amount, POLNESTA, QTYCANCE, UNITCOST, PostedSubtotal, DEX_ROW_ID FROM .CPO10110 ORDER BY PONUMBER ASC, ORD ASC END ELSE IF @PONUMBER_RS = @PONUMBER_RE BEGIN SELECT TOP 25  PONUMBER, ORD, ACTINDX, REQDATE, VENDORID, APPROVL, Committed_Amount, POLNESTA, QTYCANCE, UNITCOST, PostedSubtotal, DEX_ROW_ID FROM .CPO10110 WHERE PONUMBER = @PONUMBER_RS AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY PONUMBER ASC, ORD ASC END ELSE BEGIN SELECT TOP 25  PONUMBER, ORD, ACTINDX, REQDATE, VENDORID, APPROVL, Committed_Amount, POLNESTA, QTYCANCE, UNITCOST, PostedSubtotal, DEX_ROW_ID FROM .CPO10110 WHERE PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY PONUMBER ASC, ORD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO10110F_1] TO [DYNGRP]
GO