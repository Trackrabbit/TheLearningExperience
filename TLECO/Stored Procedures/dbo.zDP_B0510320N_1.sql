SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510320N_1] (@BS int, @MJW_Tax_Type smallint, @MJW_Tax_Type_RS smallint, @MJW_Tax_Type_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Tax_Type_RS IS NULL BEGIN SELECT TOP 25  MJW_Tax_Type, MJW_Liquidation_Setup_Ke, DEX_ROW_ID, MJW_Liquidation_Text FROM .B0510320 WHERE ( MJW_Tax_Type > @MJW_Tax_Type ) ORDER BY MJW_Tax_Type ASC END ELSE IF @MJW_Tax_Type_RS = @MJW_Tax_Type_RE BEGIN SELECT TOP 25  MJW_Tax_Type, MJW_Liquidation_Setup_Ke, DEX_ROW_ID, MJW_Liquidation_Text FROM .B0510320 WHERE MJW_Tax_Type = @MJW_Tax_Type_RS AND ( MJW_Tax_Type > @MJW_Tax_Type ) ORDER BY MJW_Tax_Type ASC END ELSE BEGIN SELECT TOP 25  MJW_Tax_Type, MJW_Liquidation_Setup_Ke, DEX_ROW_ID, MJW_Liquidation_Text FROM .B0510320 WHERE MJW_Tax_Type BETWEEN @MJW_Tax_Type_RS AND @MJW_Tax_Type_RE AND ( MJW_Tax_Type > @MJW_Tax_Type ) ORDER BY MJW_Tax_Type ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510320N_1] TO [DYNGRP]
GO
