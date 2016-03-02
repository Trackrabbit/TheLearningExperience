SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4620000F_1] (@BSSI_Portfolio_Type_ID_RS char(25), @BSSI_Portfolio_Type_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Portfolio_Type_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Portfolio_Type_ID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX, DEX_ROW_ID FROM .B4620000 ORDER BY BSSI_Portfolio_Type_ID ASC END ELSE IF @BSSI_Portfolio_Type_ID_RS = @BSSI_Portfolio_Type_ID_RE BEGIN SELECT TOP 25  BSSI_Portfolio_Type_ID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX, DEX_ROW_ID FROM .B4620000 WHERE BSSI_Portfolio_Type_ID = @BSSI_Portfolio_Type_ID_RS ORDER BY BSSI_Portfolio_Type_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Portfolio_Type_ID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX, DEX_ROW_ID FROM .B4620000 WHERE BSSI_Portfolio_Type_ID BETWEEN @BSSI_Portfolio_Type_ID_RS AND @BSSI_Portfolio_Type_ID_RE ORDER BY BSSI_Portfolio_Type_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4620000F_1] TO [DYNGRP]
GO
