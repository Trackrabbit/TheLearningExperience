SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466003F_1] (@BSSI_Allocation_ID_RS char(25), @BSSI_Allocation_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Allocation_ID_RS IS NULL BEGIN SELECT TOP 25  DATE1, BSSI_Allocation_ID, DEX_ROW_ID FROM .BS466003 ORDER BY BSSI_Allocation_ID ASC END ELSE IF @BSSI_Allocation_ID_RS = @BSSI_Allocation_ID_RE BEGIN SELECT TOP 25  DATE1, BSSI_Allocation_ID, DEX_ROW_ID FROM .BS466003 WHERE BSSI_Allocation_ID = @BSSI_Allocation_ID_RS ORDER BY BSSI_Allocation_ID ASC END ELSE BEGIN SELECT TOP 25  DATE1, BSSI_Allocation_ID, DEX_ROW_ID FROM .BS466003 WHERE BSSI_Allocation_ID BETWEEN @BSSI_Allocation_ID_RS AND @BSSI_Allocation_ID_RE ORDER BY BSSI_Allocation_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466003F_1] TO [DYNGRP]
GO
