SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10901N_1] (@BS int, @IUSCOUNT smallint, @IUSCOUNT_RS smallint, @IUSCOUNT_RE smallint) AS  set nocount on IF @IUSCOUNT_RS IS NULL BEGIN SELECT TOP 25  IUSCOUNT, DEX_ROW_ID FROM .RM10901 WHERE ( IUSCOUNT > @IUSCOUNT ) ORDER BY IUSCOUNT ASC END ELSE IF @IUSCOUNT_RS = @IUSCOUNT_RE BEGIN SELECT TOP 25  IUSCOUNT, DEX_ROW_ID FROM .RM10901 WHERE IUSCOUNT = @IUSCOUNT_RS AND ( IUSCOUNT > @IUSCOUNT ) ORDER BY IUSCOUNT ASC END ELSE BEGIN SELECT TOP 25  IUSCOUNT, DEX_ROW_ID FROM .RM10901 WHERE IUSCOUNT BETWEEN @IUSCOUNT_RS AND @IUSCOUNT_RE AND ( IUSCOUNT > @IUSCOUNT ) ORDER BY IUSCOUNT ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10901N_1] TO [DYNGRP]
GO
