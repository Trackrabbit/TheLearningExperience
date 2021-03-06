SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SE810000SS_1] (@USERID char(15), @ACTINDX int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ACTINDX, USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEX_ROW_ID FROM .SE810000 WHERE USERID = @USERID AND ACTINDX = @ACTINDX ORDER BY USERID ASC, ACTINDX ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SE810000SS_1] TO [DYNGRP]
GO
