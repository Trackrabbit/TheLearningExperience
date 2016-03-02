SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42403N_2] (@BS int, @DEPRTMNT char(7), @Restriction_Code char(15), @DEPRTMNT_RS char(7), @Restriction_Code_RS char(15), @DEPRTMNT_RE char(7), @Restriction_Code_RE char(15)) AS  set nocount on IF @DEPRTMNT_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42403 WHERE ( DEPRTMNT = @DEPRTMNT AND Restriction_Code > @Restriction_Code OR DEPRTMNT > @DEPRTMNT ) ORDER BY DEPRTMNT ASC, Restriction_Code ASC END ELSE IF @DEPRTMNT_RS = @DEPRTMNT_RE BEGIN SELECT TOP 25  Restriction_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42403 WHERE DEPRTMNT = @DEPRTMNT_RS AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND ( DEPRTMNT = @DEPRTMNT AND Restriction_Code > @Restriction_Code OR DEPRTMNT > @DEPRTMNT ) ORDER BY DEPRTMNT ASC, Restriction_Code ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42403 WHERE DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND ( DEPRTMNT = @DEPRTMNT AND Restriction_Code > @Restriction_Code OR DEPRTMNT > @DEPRTMNT ) ORDER BY DEPRTMNT ASC, Restriction_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42403N_2] TO [DYNGRP]
GO