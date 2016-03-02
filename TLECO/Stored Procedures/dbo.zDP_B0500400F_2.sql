SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500400F_2] (@BSSI_CategoryDescription_RS char(51), @BSSI_CategoryDescription_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_CategoryDescription_RS IS NULL BEGIN SELECT TOP 25  BSSI_CategoryID, BSSI_CategoryDescription, NOTEINDX, DEX_ROW_ID FROM .B0500400 ORDER BY BSSI_CategoryDescription ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_CategoryDescription_RS = @BSSI_CategoryDescription_RE BEGIN SELECT TOP 25  BSSI_CategoryID, BSSI_CategoryDescription, NOTEINDX, DEX_ROW_ID FROM .B0500400 WHERE BSSI_CategoryDescription = @BSSI_CategoryDescription_RS ORDER BY BSSI_CategoryDescription ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_CategoryID, BSSI_CategoryDescription, NOTEINDX, DEX_ROW_ID FROM .B0500400 WHERE BSSI_CategoryDescription BETWEEN @BSSI_CategoryDescription_RS AND @BSSI_CategoryDescription_RE ORDER BY BSSI_CategoryDescription ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500400F_2] TO [DYNGRP]
GO
