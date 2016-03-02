SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910110SS_1] (@USERID char(15), @SCHEDULE_NUMBER char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SCHEDULE_NUMBER, ORIG_DOC_NUMBER, USERID, DEX_ROW_ID FROM .B2910110 WHERE USERID = @USERID AND SCHEDULE_NUMBER = @SCHEDULE_NUMBER ORDER BY USERID ASC, SCHEDULE_NUMBER ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910110SS_1] TO [DYNGRP]
GO
