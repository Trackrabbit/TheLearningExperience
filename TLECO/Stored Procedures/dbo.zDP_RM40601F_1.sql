SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM40601F_1] (@INDEX1_RS smallint, @INDEX1_RE smallint) AS  set nocount on IF @INDEX1_RS IS NULL BEGIN SELECT TOP 25  INDEX1, DSCRIPTN, MESSAGE, DEX_ROW_ID FROM .RM40601 ORDER BY INDEX1 ASC END ELSE IF @INDEX1_RS = @INDEX1_RE BEGIN SELECT TOP 25  INDEX1, DSCRIPTN, MESSAGE, DEX_ROW_ID FROM .RM40601 WHERE INDEX1 = @INDEX1_RS ORDER BY INDEX1 ASC END ELSE BEGIN SELECT TOP 25  INDEX1, DSCRIPTN, MESSAGE, DEX_ROW_ID FROM .RM40601 WHERE INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE ORDER BY INDEX1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM40601F_1] TO [DYNGRP]
GO