SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40400N_1] (@BS int, @MODULE1 smallint, @SQNCLINE numeric(19,5), @MODULE1_RS smallint, @SQNCLINE_RS numeric(19,5), @MODULE1_RE smallint, @SQNCLINE_RE numeric(19,5)) AS  set nocount on IF @MODULE1_RS IS NULL BEGIN SELECT TOP 25  MODULE1, SQNCLINE, ACTINDX, DEX_ROW_ID FROM .GL40400 WHERE ( MODULE1 = @MODULE1 AND SQNCLINE > @SQNCLINE OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, SQNCLINE ASC END ELSE IF @MODULE1_RS = @MODULE1_RE BEGIN SELECT TOP 25  MODULE1, SQNCLINE, ACTINDX, DEX_ROW_ID FROM .GL40400 WHERE MODULE1 = @MODULE1_RS AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE AND ( MODULE1 = @MODULE1 AND SQNCLINE > @SQNCLINE OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, SQNCLINE ASC END ELSE BEGIN SELECT TOP 25  MODULE1, SQNCLINE, ACTINDX, DEX_ROW_ID FROM .GL40400 WHERE MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE AND ( MODULE1 = @MODULE1 AND SQNCLINE > @SQNCLINE OR MODULE1 > @MODULE1 ) ORDER BY MODULE1 ASC, SQNCLINE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40400N_1] TO [DYNGRP]
GO
