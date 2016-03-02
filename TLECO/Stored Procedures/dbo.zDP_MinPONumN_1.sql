SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MinPONumN_1] (@BS int, @PONUMBER char(17), @PONUMBER_RS char(17), @PONUMBER_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @PONUMBER_RS IS NULL BEGIN SELECT TOP 25  PONUMBER, RCPTNMBR, Never_Default_Previous, DEX_ROW_ID FROM .MinPONum WHERE ( PONUMBER > @PONUMBER ) ORDER BY PONUMBER ASC END ELSE IF @PONUMBER_RS = @PONUMBER_RE BEGIN SELECT TOP 25  PONUMBER, RCPTNMBR, Never_Default_Previous, DEX_ROW_ID FROM .MinPONum WHERE PONUMBER = @PONUMBER_RS AND ( PONUMBER > @PONUMBER ) ORDER BY PONUMBER ASC END ELSE BEGIN SELECT TOP 25  PONUMBER, RCPTNMBR, Never_Default_Previous, DEX_ROW_ID FROM .MinPONum WHERE PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( PONUMBER > @PONUMBER ) ORDER BY PONUMBER ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MinPONumN_1] TO [DYNGRP]
GO
