SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC01100L_1] (@SPLTTERMS_RS char(11), @SPLTTERMS_RE char(11)) AS  set nocount on IF @SPLTTERMS_RS IS NULL BEGIN SELECT TOP 25  SPLTTERMS, DSCRIPTN, DEX_ROW_ID FROM .SVC01100 ORDER BY SPLTTERMS DESC END ELSE IF @SPLTTERMS_RS = @SPLTTERMS_RE BEGIN SELECT TOP 25  SPLTTERMS, DSCRIPTN, DEX_ROW_ID FROM .SVC01100 WHERE SPLTTERMS = @SPLTTERMS_RS ORDER BY SPLTTERMS DESC END ELSE BEGIN SELECT TOP 25  SPLTTERMS, DSCRIPTN, DEX_ROW_ID FROM .SVC01100 WHERE SPLTTERMS BETWEEN @SPLTTERMS_RS AND @SPLTTERMS_RE ORDER BY SPLTTERMS DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC01100L_1] TO [DYNGRP]
GO
