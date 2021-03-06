SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ECM10002L_1] (@PONUMBER_RS char(17), @ORD_RS int, @PONUMBER_RE char(17), @ORD_RE int) AS  set nocount on IF @PONUMBER_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, ORD, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, VENDORID, DEX_ROW_ID FROM .ECM10002 ORDER BY PONUMBER DESC, ORD DESC END ELSE IF @PONUMBER_RS = @PONUMBER_RE BEGIN SELECT TOP 25  PONUMBER, ORD, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, VENDORID, DEX_ROW_ID FROM .ECM10002 WHERE PONUMBER = @PONUMBER_RS AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY PONUMBER DESC, ORD DESC END ELSE BEGIN SELECT TOP 25  PONUMBER, ORD, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, VENDORID, DEX_ROW_ID FROM .ECM10002 WHERE PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY PONUMBER DESC, ORD DESC END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM10002L_1] TO [DYNGRP]
GO
