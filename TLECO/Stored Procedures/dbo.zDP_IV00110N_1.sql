SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00110N_1] (@BS int, @PLANNERID char(15), @PLANNERID_RS char(15), @PLANNERID_RE char(15)) AS  set nocount on IF @PLANNERID_RS IS NULL BEGIN SELECT TOP 25  PLANNERID, PLANNERNAME, NOTEINDX, DEX_ROW_ID FROM .IV00110 WHERE ( PLANNERID > @PLANNERID ) ORDER BY PLANNERID ASC END ELSE IF @PLANNERID_RS = @PLANNERID_RE BEGIN SELECT TOP 25  PLANNERID, PLANNERNAME, NOTEINDX, DEX_ROW_ID FROM .IV00110 WHERE PLANNERID = @PLANNERID_RS AND ( PLANNERID > @PLANNERID ) ORDER BY PLANNERID ASC END ELSE BEGIN SELECT TOP 25  PLANNERID, PLANNERNAME, NOTEINDX, DEX_ROW_ID FROM .IV00110 WHERE PLANNERID BETWEEN @PLANNERID_RS AND @PLANNERID_RE AND ( PLANNERID > @PLANNERID ) ORDER BY PLANNERID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00110N_1] TO [DYNGRP]
GO