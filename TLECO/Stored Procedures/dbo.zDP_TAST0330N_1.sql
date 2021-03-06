SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TAST0330N_1] (@BS int, @ATTTYP char(31), @ATTTYP_RS char(31), @ATTTYP_RE char(31)) AS  set nocount on IF @ATTTYP_RS IS NULL BEGIN SELECT TOP 25  ATTTYP, DEX_ROW_ID FROM .TAST0330 WHERE ( ATTTYP > @ATTTYP ) ORDER BY ATTTYP ASC END ELSE IF @ATTTYP_RS = @ATTTYP_RE BEGIN SELECT TOP 25  ATTTYP, DEX_ROW_ID FROM .TAST0330 WHERE ATTTYP = @ATTTYP_RS AND ( ATTTYP > @ATTTYP ) ORDER BY ATTTYP ASC END ELSE BEGIN SELECT TOP 25  ATTTYP, DEX_ROW_ID FROM .TAST0330 WHERE ATTTYP BETWEEN @ATTTYP_RS AND @ATTTYP_RE AND ( ATTTYP > @ATTTYP ) ORDER BY ATTTYP ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TAST0330N_1] TO [DYNGRP]
GO
