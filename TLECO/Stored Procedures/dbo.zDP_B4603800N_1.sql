SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603800N_1] (@BS int, @BSSI_Maintenance_Code_ID char(25), @BSSI_Maintenance_Code_ID_RS char(25), @BSSI_Maintenance_Code_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Maintenance_Code_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Maintenance_Code_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4603800 WHERE ( BSSI_Maintenance_Code_ID > @BSSI_Maintenance_Code_ID ) ORDER BY BSSI_Maintenance_Code_ID ASC END ELSE IF @BSSI_Maintenance_Code_ID_RS = @BSSI_Maintenance_Code_ID_RE BEGIN SELECT TOP 25  BSSI_Maintenance_Code_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4603800 WHERE BSSI_Maintenance_Code_ID = @BSSI_Maintenance_Code_ID_RS AND ( BSSI_Maintenance_Code_ID > @BSSI_Maintenance_Code_ID ) ORDER BY BSSI_Maintenance_Code_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Maintenance_Code_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4603800 WHERE BSSI_Maintenance_Code_ID BETWEEN @BSSI_Maintenance_Code_ID_RS AND @BSSI_Maintenance_Code_ID_RE AND ( BSSI_Maintenance_Code_ID > @BSSI_Maintenance_Code_ID ) ORDER BY BSSI_Maintenance_Code_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603800N_1] TO [DYNGRP]
GO
