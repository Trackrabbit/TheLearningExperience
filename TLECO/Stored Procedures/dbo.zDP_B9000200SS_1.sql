SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000200SS_1] (@BSSI_Collateral_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Collateral_ID, BSSI_Description, DEX_ROW_ID FROM .B9000200 WHERE BSSI_Collateral_ID = @BSSI_Collateral_ID ORDER BY BSSI_Collateral_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000200SS_1] TO [DYNGRP]
GO
