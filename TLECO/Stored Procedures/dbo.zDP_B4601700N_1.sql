SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601700N_1] (@BS int, @BSSI_Site_Class_ID char(15), @BSSI_Site_Class_ID_RS char(15), @BSSI_Site_Class_ID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Site_Class_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Site_Class_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601700 WHERE ( BSSI_Site_Class_ID > @BSSI_Site_Class_ID ) ORDER BY BSSI_Site_Class_ID ASC END ELSE IF @BSSI_Site_Class_ID_RS = @BSSI_Site_Class_ID_RE BEGIN SELECT TOP 25  BSSI_Site_Class_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601700 WHERE BSSI_Site_Class_ID = @BSSI_Site_Class_ID_RS AND ( BSSI_Site_Class_ID > @BSSI_Site_Class_ID ) ORDER BY BSSI_Site_Class_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Site_Class_ID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601700 WHERE BSSI_Site_Class_ID BETWEEN @BSSI_Site_Class_ID_RS AND @BSSI_Site_Class_ID_RE AND ( BSSI_Site_Class_ID > @BSSI_Site_Class_ID ) ORDER BY BSSI_Site_Class_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601700N_1] TO [DYNGRP]
GO
