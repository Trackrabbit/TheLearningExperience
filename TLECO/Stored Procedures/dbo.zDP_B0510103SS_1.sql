SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510103SS_1] (@SLPRSNID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SLPRSNID, MJW_Office_Name, BSSI_CategoryID, DEX_ROW_ID FROM .B0510103 WHERE SLPRSNID = @SLPRSNID ORDER BY SLPRSNID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510103SS_1] TO [DYNGRP]
GO
