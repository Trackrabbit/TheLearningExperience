SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510320SS_1] (@MJW_Tax_Type smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Tax_Type, MJW_Liquidation_Setup_Ke, DEX_ROW_ID, MJW_Liquidation_Text FROM .B0510320 WHERE MJW_Tax_Type = @MJW_Tax_Type ORDER BY MJW_Tax_Type ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510320SS_1] TO [DYNGRP]
GO
