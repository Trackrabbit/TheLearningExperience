SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SE00400SS_5] (@USERID char(15), @ACTINDX int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, SESORNO1, SESORT1, OPENYEAR, ACTINDX, DEX_ROW_ID FROM .SE00400 WHERE USERID = @USERID AND ACTINDX = @ACTINDX ORDER BY USERID ASC, ACTINDX ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SE00400SS_5] TO [DYNGRP]
GO
