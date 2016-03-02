SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00225L_2] (@PRDLINE_RS char(21), @PROBCDE_RS char(11), @RPRCODE_RS char(11), @PRDLINE_RE char(21), @PROBCDE_RE char(11), @RPRCODE_RE char(11)) AS  set nocount on IF @PRDLINE_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, PRDLINE, PROBCDE, RPRCODE, NUMOFTRX, DEX_ROW_ID FROM .SVC00225 ORDER BY PRDLINE DESC, PROBCDE DESC, RPRCODE DESC, DEX_ROW_ID DESC END ELSE IF @PRDLINE_RS = @PRDLINE_RE BEGIN SELECT TOP 25  ITEMNMBR, PRDLINE, PROBCDE, RPRCODE, NUMOFTRX, DEX_ROW_ID FROM .SVC00225 WHERE PRDLINE = @PRDLINE_RS AND PROBCDE BETWEEN @PROBCDE_RS AND @PROBCDE_RE AND RPRCODE BETWEEN @RPRCODE_RS AND @RPRCODE_RE ORDER BY PRDLINE DESC, PROBCDE DESC, RPRCODE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, PRDLINE, PROBCDE, RPRCODE, NUMOFTRX, DEX_ROW_ID FROM .SVC00225 WHERE PRDLINE BETWEEN @PRDLINE_RS AND @PRDLINE_RE AND PROBCDE BETWEEN @PROBCDE_RS AND @PROBCDE_RE AND RPRCODE BETWEEN @RPRCODE_RS AND @RPRCODE_RE ORDER BY PRDLINE DESC, PROBCDE DESC, RPRCODE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00225L_2] TO [DYNGRP]
GO
