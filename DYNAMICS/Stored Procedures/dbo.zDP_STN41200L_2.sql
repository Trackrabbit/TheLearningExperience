SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41200L_2] (@PRNSER_RS smallint, @PRNTTASKDESC_RS char(51), @PRNSER_RE smallint, @PRNTTASKDESC_RE char(51)) AS  set nocount on IF @PRNSER_RS IS NULL BEGIN SELECT TOP 25  PRNSER, PRNTASK, PRNTTASKDESC, DEX_ROW_ID FROM .STN41200 ORDER BY PRNSER DESC, PRNTTASKDESC DESC, DEX_ROW_ID DESC END ELSE IF @PRNSER_RS = @PRNSER_RE BEGIN SELECT TOP 25  PRNSER, PRNTASK, PRNTTASKDESC, DEX_ROW_ID FROM .STN41200 WHERE PRNSER = @PRNSER_RS AND PRNTTASKDESC BETWEEN @PRNTTASKDESC_RS AND @PRNTTASKDESC_RE ORDER BY PRNSER DESC, PRNTTASKDESC DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  PRNSER, PRNTASK, PRNTTASKDESC, DEX_ROW_ID FROM .STN41200 WHERE PRNSER BETWEEN @PRNSER_RS AND @PRNSER_RE AND PRNTTASKDESC BETWEEN @PRNTTASKDESC_RS AND @PRNTTASKDESC_RE ORDER BY PRNSER DESC, PRNTTASKDESC DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41200L_2] TO [DYNGRP]
GO
