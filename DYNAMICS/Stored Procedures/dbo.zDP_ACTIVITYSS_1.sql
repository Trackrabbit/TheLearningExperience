SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ACTIVITYSS_1] (@CMPNYNAM char(65), @USERID char(15), @ClientUIType smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, CMPNYNAM, ClientUIType, LOGINDAT, LOGINTIM, SQLSESID, Language_ID, ClientType, IsOffline, DEX_ROW_ID FROM .ACTIVITY WHERE CMPNYNAM = @CMPNYNAM AND USERID = @USERID AND ClientUIType = @ClientUIType ORDER BY CMPNYNAM ASC, USERID ASC, ClientUIType ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ACTIVITYSS_1] TO [DYNGRP]
GO
