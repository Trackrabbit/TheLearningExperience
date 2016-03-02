SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS460000F_1] (@BSSI_DocType_RS smallint, @BSSI_DocType_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_DocType_RS IS NULL BEGIN SELECT TOP 25  BSSI_DocType, BSSI_Directory, DEX_ROW_ID FROM .BS460000 ORDER BY BSSI_DocType ASC END ELSE IF @BSSI_DocType_RS = @BSSI_DocType_RE BEGIN SELECT TOP 25  BSSI_DocType, BSSI_Directory, DEX_ROW_ID FROM .BS460000 WHERE BSSI_DocType = @BSSI_DocType_RS ORDER BY BSSI_DocType ASC END ELSE BEGIN SELECT TOP 25  BSSI_DocType, BSSI_Directory, DEX_ROW_ID FROM .BS460000 WHERE BSSI_DocType BETWEEN @BSSI_DocType_RS AND @BSSI_DocType_RE ORDER BY BSSI_DocType ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS460000F_1] TO [DYNGRP]
GO
