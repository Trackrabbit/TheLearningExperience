SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ACTIVITYSI] (@USERID char(15), @CMPNYNAM char(65), @ClientUIType smallint, @LOGINDAT datetime, @LOGINTIM datetime, @SQLSESID int, @Language_ID smallint, @ClientType smallint, @IsOffline tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ACTIVITY (USERID, CMPNYNAM, ClientUIType, LOGINDAT, LOGINTIM, SQLSESID, Language_ID, ClientType, IsOffline) VALUES ( @USERID, @CMPNYNAM, @ClientUIType, @LOGINDAT, @LOGINTIM, @SQLSESID, @Language_ID, @ClientType, @IsOffline) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ACTIVITYSI] TO [DYNGRP]
GO
