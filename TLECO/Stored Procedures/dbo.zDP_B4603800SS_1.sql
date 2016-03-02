SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603800SS_1] (@BSSI_Maintenance_Code_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Maintenance_Code_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4603800 WHERE BSSI_Maintenance_Code_ID = @BSSI_Maintenance_Code_ID ORDER BY BSSI_Maintenance_Code_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603800SS_1] TO [DYNGRP]
GO
