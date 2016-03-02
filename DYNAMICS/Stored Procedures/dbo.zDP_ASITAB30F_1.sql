SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASITAB30F_1] (@Language_ID_RS smallint, @STRTYPE_RS smallint, @UNTRSVAL_RS char(51), @Language_ID_RE smallint, @STRTYPE_RE smallint, @UNTRSVAL_RE char(51)) AS /* 14.00.0084.000 */ set nocount on IF @Language_ID_RS IS NULL BEGIN SELECT TOP 25  Language_ID, STRTYPE, UNTRSVAL, TRANSVAL, DEX_ROW_ID FROM .ASITAB30 ORDER BY Language_ID ASC, STRTYPE ASC, UNTRSVAL ASC END ELSE IF @Language_ID_RS = @Language_ID_RE BEGIN SELECT TOP 25  Language_ID, STRTYPE, UNTRSVAL, TRANSVAL, DEX_ROW_ID FROM .ASITAB30 WHERE Language_ID = @Language_ID_RS AND STRTYPE BETWEEN @STRTYPE_RS AND @STRTYPE_RE AND UNTRSVAL BETWEEN @UNTRSVAL_RS AND @UNTRSVAL_RE ORDER BY Language_ID ASC, STRTYPE ASC, UNTRSVAL ASC END ELSE BEGIN SELECT TOP 25  Language_ID, STRTYPE, UNTRSVAL, TRANSVAL, DEX_ROW_ID FROM .ASITAB30 WHERE Language_ID BETWEEN @Language_ID_RS AND @Language_ID_RE AND STRTYPE BETWEEN @STRTYPE_RS AND @STRTYPE_RE AND UNTRSVAL BETWEEN @UNTRSVAL_RS AND @UNTRSVAL_RE ORDER BY Language_ID ASC, STRTYPE ASC, UNTRSVAL ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASITAB30F_1] TO [DYNGRP]
GO
