SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL00105SS_1] (@ACTINDX int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMST, DEX_ROW_ID FROM .GL00105 WHERE ACTINDX = @ACTINDX ORDER BY ACTINDX ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00105SS_1] TO [DYNGRP]
GO