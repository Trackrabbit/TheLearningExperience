SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00908F_1] (@RPRCODE_RS char(11), @RPRCODE_RE char(11)) AS  set nocount on IF @RPRCODE_RS IS NULL BEGIN SELECT TOP 25  RPRCODE, DSCRIPTN, DEX_ROW_ID FROM .SVC00908 ORDER BY RPRCODE ASC END ELSE IF @RPRCODE_RS = @RPRCODE_RE BEGIN SELECT TOP 25  RPRCODE, DSCRIPTN, DEX_ROW_ID FROM .SVC00908 WHERE RPRCODE = @RPRCODE_RS ORDER BY RPRCODE ASC END ELSE BEGIN SELECT TOP 25  RPRCODE, DSCRIPTN, DEX_ROW_ID FROM .SVC00908 WHERE RPRCODE BETWEEN @RPRCODE_RS AND @RPRCODE_RE ORDER BY RPRCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00908F_1] TO [DYNGRP]
GO