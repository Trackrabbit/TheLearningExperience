SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC40201N_1] (@BS int, @SGMTNUMB smallint, @SGMTNUMB_RS smallint, @SGMTNUMB_RE smallint) AS  set nocount on IF @SGMTNUMB_RS IS NULL BEGIN SELECT TOP 25  SGMTNUMB, SGMTSOURCE, DEX_ROW_ID FROM .PC40201 WHERE ( SGMTNUMB > @SGMTNUMB ) ORDER BY SGMTNUMB ASC END ELSE IF @SGMTNUMB_RS = @SGMTNUMB_RE BEGIN SELECT TOP 25  SGMTNUMB, SGMTSOURCE, DEX_ROW_ID FROM .PC40201 WHERE SGMTNUMB = @SGMTNUMB_RS AND ( SGMTNUMB > @SGMTNUMB ) ORDER BY SGMTNUMB ASC END ELSE BEGIN SELECT TOP 25  SGMTNUMB, SGMTSOURCE, DEX_ROW_ID FROM .PC40201 WHERE SGMTNUMB BETWEEN @SGMTNUMB_RS AND @SGMTNUMB_RE AND ( SGMTNUMB > @SGMTNUMB ) ORDER BY SGMTNUMB ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC40201N_1] TO [DYNGRP]
GO
