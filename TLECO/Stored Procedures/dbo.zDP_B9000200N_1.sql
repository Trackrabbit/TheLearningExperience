SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000200N_1] (@BS int, @BSSI_Collateral_ID char(25), @BSSI_Collateral_ID_RS char(25), @BSSI_Collateral_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Collateral_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Collateral_ID, BSSI_Description, DEX_ROW_ID FROM .B9000200 WHERE ( BSSI_Collateral_ID > @BSSI_Collateral_ID ) ORDER BY BSSI_Collateral_ID ASC END ELSE IF @BSSI_Collateral_ID_RS = @BSSI_Collateral_ID_RE BEGIN SELECT TOP 25  BSSI_Collateral_ID, BSSI_Description, DEX_ROW_ID FROM .B9000200 WHERE BSSI_Collateral_ID = @BSSI_Collateral_ID_RS AND ( BSSI_Collateral_ID > @BSSI_Collateral_ID ) ORDER BY BSSI_Collateral_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Collateral_ID, BSSI_Description, DEX_ROW_ID FROM .B9000200 WHERE BSSI_Collateral_ID BETWEEN @BSSI_Collateral_ID_RS AND @BSSI_Collateral_ID_RE AND ( BSSI_Collateral_ID > @BSSI_Collateral_ID ) ORDER BY BSSI_Collateral_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000200N_1] TO [DYNGRP]
GO
