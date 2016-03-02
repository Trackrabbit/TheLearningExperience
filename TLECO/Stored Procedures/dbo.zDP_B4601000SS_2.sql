SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601000SS_2] (@BSSI_Description char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Site_TypeID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX, DEX_ROW_ID FROM .B4601000 WHERE BSSI_Description = @BSSI_Description ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601000SS_2] TO [DYNGRP]
GO
