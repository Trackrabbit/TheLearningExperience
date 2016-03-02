SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466000SS_2] (@BSSI_Description2 char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, BSSI_Facility_ID, DEX_ROW_ID FROM .BS466000 WHERE BSSI_Description2 = @BSSI_Description2 ORDER BY BSSI_Description2 ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466000SS_2] TO [DYNGRP]
GO
