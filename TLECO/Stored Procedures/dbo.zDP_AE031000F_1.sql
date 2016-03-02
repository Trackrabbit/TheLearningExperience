SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AE031000F_1] (@EMPID_I_RS char(15), @EMPID_I_RE char(15)) AS  set nocount on IF @EMPID_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, Hours_FMLA, DATE1, DEX_ROW_ID FROM .AE031000 ORDER BY EMPID_I ASC END ELSE IF @EMPID_I_RS = @EMPID_I_RE BEGIN SELECT TOP 25  EMPID_I, Hours_FMLA, DATE1, DEX_ROW_ID FROM .AE031000 WHERE EMPID_I = @EMPID_I_RS ORDER BY EMPID_I ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, Hours_FMLA, DATE1, DEX_ROW_ID FROM .AE031000 WHERE EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY EMPID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AE031000F_1] TO [DYNGRP]
GO
