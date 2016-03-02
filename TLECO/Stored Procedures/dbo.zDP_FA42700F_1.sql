SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42700F_1] (@CALNDRID_RS char(15), @FISCALYEAR_RS smallint, @CALNDRID_RE char(15), @FISCALYEAR_RE smallint) AS  set nocount on IF @CALNDRID_RS IS NULL BEGIN SELECT TOP 25  CALNDRID, FISCALYEAR, SLNGYEAR, DEPRPCNT, DEX_ROW_ID FROM .FA42700 ORDER BY CALNDRID ASC, FISCALYEAR ASC END ELSE IF @CALNDRID_RS = @CALNDRID_RE BEGIN SELECT TOP 25  CALNDRID, FISCALYEAR, SLNGYEAR, DEPRPCNT, DEX_ROW_ID FROM .FA42700 WHERE CALNDRID = @CALNDRID_RS AND FISCALYEAR BETWEEN @FISCALYEAR_RS AND @FISCALYEAR_RE ORDER BY CALNDRID ASC, FISCALYEAR ASC END ELSE BEGIN SELECT TOP 25  CALNDRID, FISCALYEAR, SLNGYEAR, DEPRPCNT, DEX_ROW_ID FROM .FA42700 WHERE CALNDRID BETWEEN @CALNDRID_RS AND @CALNDRID_RE AND FISCALYEAR BETWEEN @FISCALYEAR_RS AND @FISCALYEAR_RE ORDER BY CALNDRID ASC, FISCALYEAR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42700F_1] TO [DYNGRP]
GO