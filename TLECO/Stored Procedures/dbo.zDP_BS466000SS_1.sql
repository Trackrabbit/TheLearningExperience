SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466000SS_1] (@BSSI_Template_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID, DEX_ROW_ID FROM .BS466000 WHERE BSSI_Template_ID = @BSSI_Template_ID ORDER BY BSSI_Template_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466000SS_1] TO [DYNGRP]
GO
