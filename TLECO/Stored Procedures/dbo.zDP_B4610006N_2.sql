SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610006N_2] (@BS int, @DSCRIPTN char(31), @DEX_ROW_ID int, @DSCRIPTN_RS char(31), @DSCRIPTN_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  BSSI_NAICS, DSCRIPTN, BSSI_TenantTypeID, BSSI_Description, BSSI_Category, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4610006 WHERE ( DSCRIPTN = @DSCRIPTN AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  BSSI_NAICS, DSCRIPTN, BSSI_TenantTypeID, BSSI_Description, BSSI_Category, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4610006 WHERE DSCRIPTN = @DSCRIPTN_RS AND ( DSCRIPTN = @DSCRIPTN AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_NAICS, DSCRIPTN, BSSI_TenantTypeID, BSSI_Description, BSSI_Category, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4610006 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND ( DSCRIPTN = @DSCRIPTN AND DEX_ROW_ID > @DEX_ROW_ID OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610006N_2] TO [DYNGRP]
GO
