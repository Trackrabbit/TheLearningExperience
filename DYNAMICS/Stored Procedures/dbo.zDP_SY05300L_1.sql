SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY05300L_1] (@Language_ID_RS smallint, @STRTYPE_RS smallint, @UNTRSVAL_RS char(51), @Language_ID_RE smallint, @STRTYPE_RE smallint, @UNTRSVAL_RE char(51)) AS  set nocount on IF @Language_ID_RS IS NULL BEGIN SELECT TOP 25  Language_ID, STRTYPE, UNTRSVAL, TRANSVAL, DEX_ROW_ID FROM .SY05300 ORDER BY Language_ID DESC, STRTYPE DESC, UNTRSVAL DESC END ELSE IF @Language_ID_RS = @Language_ID_RE BEGIN SELECT TOP 25  Language_ID, STRTYPE, UNTRSVAL, TRANSVAL, DEX_ROW_ID FROM .SY05300 WHERE Language_ID = @Language_ID_RS AND STRTYPE BETWEEN @STRTYPE_RS AND @STRTYPE_RE AND UNTRSVAL BETWEEN @UNTRSVAL_RS AND @UNTRSVAL_RE ORDER BY Language_ID DESC, STRTYPE DESC, UNTRSVAL DESC END ELSE BEGIN SELECT TOP 25  Language_ID, STRTYPE, UNTRSVAL, TRANSVAL, DEX_ROW_ID FROM .SY05300 WHERE Language_ID BETWEEN @Language_ID_RS AND @Language_ID_RE AND STRTYPE BETWEEN @STRTYPE_RS AND @STRTYPE_RE AND UNTRSVAL BETWEEN @UNTRSVAL_RS AND @UNTRSVAL_RE ORDER BY Language_ID DESC, STRTYPE DESC, UNTRSVAL DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05300L_1] TO [DYNGRP]
GO