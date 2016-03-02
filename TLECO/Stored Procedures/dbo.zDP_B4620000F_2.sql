SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4620000F_2] (@BSSI_Description_RS char(51), @BSSI_Description_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Description_RS IS NULL BEGIN SELECT TOP 25  BSSI_Portfolio_Type_ID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX, DEX_ROW_ID FROM .B4620000 ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Description_RS = @BSSI_Description_RE BEGIN SELECT TOP 25  BSSI_Portfolio_Type_ID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX, DEX_ROW_ID FROM .B4620000 WHERE BSSI_Description = @BSSI_Description_RS ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Portfolio_Type_ID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX, DEX_ROW_ID FROM .B4620000 WHERE BSSI_Description BETWEEN @BSSI_Description_RS AND @BSSI_Description_RE ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4620000F_2] TO [DYNGRP]
GO
