SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00109F_1] (@ITEMNMBR_RS char(31), @ORD_RS int, @ITEMNMBR_RE char(31), @ORD_RE int) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, ORD, SNSEGTYPE, DATEFMT, SGMNTLTH, SNOPERATION, SNSTARTVAL, SNENDVAL, DEX_ROW_ID FROM .IV00109 ORDER BY ITEMNMBR ASC, ORD ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, ORD, SNSEGTYPE, DATEFMT, SGMNTLTH, SNOPERATION, SNSTARTVAL, SNENDVAL, DEX_ROW_ID FROM .IV00109 WHERE ITEMNMBR = @ITEMNMBR_RS AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY ITEMNMBR ASC, ORD ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, ORD, SNSEGTYPE, DATEFMT, SGMNTLTH, SNOPERATION, SNSTARTVAL, SNENDVAL, DEX_ROW_ID FROM .IV00109 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE ORDER BY ITEMNMBR ASC, ORD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00109F_1] TO [DYNGRP]
GO
