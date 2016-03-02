SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466000F_2] (@BSSI_Description2_RS char(51), @BSSI_Description2_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Description2_RS IS NULL BEGIN SELECT TOP 25  BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID, DEX_ROW_ID FROM .BS466000 ORDER BY BSSI_Description2 ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Description2_RS = @BSSI_Description2_RE BEGIN SELECT TOP 25  BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID, DEX_ROW_ID FROM .BS466000 WHERE BSSI_Description2 = @BSSI_Description2_RS ORDER BY BSSI_Description2 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID, DEX_ROW_ID FROM .BS466000 WHERE BSSI_Description2 BETWEEN @BSSI_Description2_RS AND @BSSI_Description2_RE ORDER BY BSSI_Description2 ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466000F_2] TO [DYNGRP]
GO
