SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600303SS_1] (@SALSTERR char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SALSTERR, BSSI_Region_ID, BSSI_Territory_Seg, DEX_ROW_ID FROM .B4600303 WHERE SALSTERR = @SALSTERR ORDER BY SALSTERR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600303SS_1] TO [DYNGRP]
GO