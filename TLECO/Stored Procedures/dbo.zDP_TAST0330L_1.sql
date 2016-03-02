SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TAST0330L_1] (@ATTTYP_RS char(31), @ATTTYP_RE char(31)) AS  set nocount on IF @ATTTYP_RS IS NULL BEGIN SELECT TOP 25  ATTTYP, DEX_ROW_ID FROM .TAST0330 ORDER BY ATTTYP DESC END ELSE IF @ATTTYP_RS = @ATTTYP_RE BEGIN SELECT TOP 25  ATTTYP, DEX_ROW_ID FROM .TAST0330 WHERE ATTTYP = @ATTTYP_RS ORDER BY ATTTYP DESC END ELSE BEGIN SELECT TOP 25  ATTTYP, DEX_ROW_ID FROM .TAST0330 WHERE ATTTYP BETWEEN @ATTTYP_RS AND @ATTTYP_RE ORDER BY ATTTYP DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TAST0330L_1] TO [DYNGRP]
GO
