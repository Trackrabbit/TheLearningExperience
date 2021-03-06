SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM20001L_1] (@SEQNUMBR_RS int, @SEQNUMBR_RE int) AS  set nocount on IF @SEQNUMBR_RS IS NULL BEGIN SELECT TOP 25  SEQNUMBR, DUEDATE, DSCRIPTN, CFM_Amount, DEX_ROW_ID FROM .CFM20001 ORDER BY SEQNUMBR DESC END ELSE IF @SEQNUMBR_RS = @SEQNUMBR_RE BEGIN SELECT TOP 25  SEQNUMBR, DUEDATE, DSCRIPTN, CFM_Amount, DEX_ROW_ID FROM .CFM20001 WHERE SEQNUMBR = @SEQNUMBR_RS ORDER BY SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  SEQNUMBR, DUEDATE, DSCRIPTN, CFM_Amount, DEX_ROW_ID FROM .CFM20001 WHERE SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM20001L_1] TO [DYNGRP]
GO
