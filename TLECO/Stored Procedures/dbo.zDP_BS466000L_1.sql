SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466000L_1] (@BSSI_Template_ID_RS char(25), @BSSI_Template_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Template_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID, DEX_ROW_ID FROM .BS466000 ORDER BY BSSI_Template_ID DESC END ELSE IF @BSSI_Template_ID_RS = @BSSI_Template_ID_RE BEGIN SELECT TOP 25  BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID, DEX_ROW_ID FROM .BS466000 WHERE BSSI_Template_ID = @BSSI_Template_ID_RS ORDER BY BSSI_Template_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID, DEX_ROW_ID FROM .BS466000 WHERE BSSI_Template_ID BETWEEN @BSSI_Template_ID_RS AND @BSSI_Template_ID_RE ORDER BY BSSI_Template_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466000L_1] TO [DYNGRP]
GO
