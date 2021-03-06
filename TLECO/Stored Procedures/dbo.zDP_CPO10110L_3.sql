SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO10110L_3] (@ACTINDX_RS int, @REQDATE_RS datetime, @PONUMBER_RS char(17), @ORD_RS int, @ACTINDX_RE int, @REQDATE_RE datetime, @PONUMBER_RE char(17), @ORD_RE int) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, ORD, ACTINDX, REQDATE, VENDORID, APPROVL, Committed_Amount, POLNESTA, QTYCANCE, UNITCOST, PostedSubtotal, DEX_ROW_ID FROM .CPO10110 ORDER BY ACTINDX DESC, REQDATE DESC, PONUMBER DESC, ORD DESC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  PONUMBER, ORD, ACTINDX, REQDATE, VENDORID, APPROVL, Committed_Amount, POLNESTA, QTYCANCE, UNITCOST, PostedSubtotal, DEX_ROW_ID FROM .CPO10110 WHERE ACTINDX = @ACTINDX_RS AND REQDATE BETWEEN @REQDATE_RS AND @REQDATE_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY ACTINDX DESC, REQDATE DESC, PONUMBER DESC, ORD DESC END ELSE BEGIN SELECT TOP 25  PONUMBER, ORD, ACTINDX, REQDATE, VENDORID, APPROVL, Committed_Amount, POLNESTA, QTYCANCE, UNITCOST, PostedSubtotal, DEX_ROW_ID FROM .CPO10110 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND REQDATE BETWEEN @REQDATE_RS AND @REQDATE_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY ACTINDX DESC, REQDATE DESC, PONUMBER DESC, ORD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO10110L_3] TO [DYNGRP]
GO
