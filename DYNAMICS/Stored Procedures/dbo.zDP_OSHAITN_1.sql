SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_OSHAITN_1] (@BS int, @INJURYTYPE_I char(31), @INJURYTYPE_I_RS char(31), @INJURYTYPE_I_RE char(31)) AS  set nocount on IF @INJURYTYPE_I_RS IS NULL BEGIN SELECT TOP 25  INJURYTYPE_I, DEX_ROW_ID FROM .OSHAIT WHERE ( INJURYTYPE_I > @INJURYTYPE_I ) ORDER BY INJURYTYPE_I ASC END ELSE IF @INJURYTYPE_I_RS = @INJURYTYPE_I_RE BEGIN SELECT TOP 25  INJURYTYPE_I, DEX_ROW_ID FROM .OSHAIT WHERE INJURYTYPE_I = @INJURYTYPE_I_RS AND ( INJURYTYPE_I > @INJURYTYPE_I ) ORDER BY INJURYTYPE_I ASC END ELSE BEGIN SELECT TOP 25  INJURYTYPE_I, DEX_ROW_ID FROM .OSHAIT WHERE INJURYTYPE_I BETWEEN @INJURYTYPE_I_RS AND @INJURYTYPE_I_RE AND ( INJURYTYPE_I > @INJURYTYPE_I ) ORDER BY INJURYTYPE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_OSHAITN_1] TO [DYNGRP]
GO
