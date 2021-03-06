SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640501L_1] (@BSSI_Column_ID_RS smallint, @BSSI_Column_Filter_ID_RS char(25), @BSSI_Column_ID_RE smallint, @BSSI_Column_Filter_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Column_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Column_ID, BSSI_Column_Filter_ID, DEX_ROW_ID FROM .B4640501 ORDER BY BSSI_Column_ID DESC, BSSI_Column_Filter_ID DESC END ELSE IF @BSSI_Column_ID_RS = @BSSI_Column_ID_RE BEGIN SELECT TOP 25  BSSI_Column_ID, BSSI_Column_Filter_ID, DEX_ROW_ID FROM .B4640501 WHERE BSSI_Column_ID = @BSSI_Column_ID_RS AND BSSI_Column_Filter_ID BETWEEN @BSSI_Column_Filter_ID_RS AND @BSSI_Column_Filter_ID_RE ORDER BY BSSI_Column_ID DESC, BSSI_Column_Filter_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Column_ID, BSSI_Column_Filter_ID, DEX_ROW_ID FROM .B4640501 WHERE BSSI_Column_ID BETWEEN @BSSI_Column_ID_RS AND @BSSI_Column_ID_RE AND BSSI_Column_Filter_ID BETWEEN @BSSI_Column_Filter_ID_RS AND @BSSI_Column_Filter_ID_RE ORDER BY BSSI_Column_ID DESC, BSSI_Column_Filter_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640501L_1] TO [DYNGRP]
GO
