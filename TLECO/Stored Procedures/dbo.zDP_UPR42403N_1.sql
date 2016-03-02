SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42403N_1] (@BS int, @Restriction_Code char(15), @DEPRTMNT char(7), @Restriction_Code_RS char(15), @DEPRTMNT_RS char(7), @Restriction_Code_RE char(15), @DEPRTMNT_RE char(7)) AS  set nocount on IF @Restriction_Code_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42403 WHERE ( Restriction_Code = @Restriction_Code AND DEPRTMNT < @DEPRTMNT OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, DEPRTMNT DESC END ELSE IF @Restriction_Code_RS = @Restriction_Code_RE BEGIN SELECT TOP 25  Restriction_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42403 WHERE Restriction_Code = @Restriction_Code_RS AND DEPRTMNT BETWEEN @DEPRTMNT_RE AND @DEPRTMNT_RS AND ( Restriction_Code = @Restriction_Code AND DEPRTMNT < @DEPRTMNT OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, DEPRTMNT DESC END ELSE BEGIN SELECT TOP 25  Restriction_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR42403 WHERE Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RE AND @DEPRTMNT_RS AND ( Restriction_Code = @Restriction_Code AND DEPRTMNT < @DEPRTMNT OR Restriction_Code > @Restriction_Code ) ORDER BY Restriction_Code ASC, DEPRTMNT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42403N_1] TO [DYNGRP]
GO
