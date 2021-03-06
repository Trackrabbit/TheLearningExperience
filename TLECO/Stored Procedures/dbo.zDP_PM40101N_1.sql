SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM40101N_1] (@BS int, @INDEX1 smallint, @INDEX1_RS smallint, @INDEX1_RE smallint) AS  set nocount on IF @INDEX1_RS IS NULL BEGIN SELECT TOP 25  UNIQKEY, INDEX1, DSCRIPTN, ENDGPDYS, DEX_ROW_ID FROM .PM40101 WHERE ( INDEX1 > @INDEX1 ) ORDER BY INDEX1 ASC END ELSE IF @INDEX1_RS = @INDEX1_RE BEGIN SELECT TOP 25  UNIQKEY, INDEX1, DSCRIPTN, ENDGPDYS, DEX_ROW_ID FROM .PM40101 WHERE INDEX1 = @INDEX1_RS AND ( INDEX1 > @INDEX1 ) ORDER BY INDEX1 ASC END ELSE BEGIN SELECT TOP 25  UNIQKEY, INDEX1, DSCRIPTN, ENDGPDYS, DEX_ROW_ID FROM .PM40101 WHERE INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND ( INDEX1 > @INDEX1 ) ORDER BY INDEX1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM40101N_1] TO [DYNGRP]
GO
