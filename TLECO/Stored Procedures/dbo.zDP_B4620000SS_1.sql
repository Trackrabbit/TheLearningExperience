SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4620000SS_1] (@BSSI_Portfolio_Type_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Portfolio_Type_ID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX, DEX_ROW_ID FROM .B4620000 WHERE BSSI_Portfolio_Type_ID = @BSSI_Portfolio_Type_ID ORDER BY BSSI_Portfolio_Type_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4620000SS_1] TO [DYNGRP]
GO
