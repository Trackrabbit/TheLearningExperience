SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFMACTIVSI] (@USERID char(15), @EBS_Forecast_ID char(15), @LOGINDAT datetime, @LOGINTIM datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CFMACTIV (USERID, EBS_Forecast_ID, LOGINDAT, LOGINTIM) VALUES ( @USERID, @EBS_Forecast_ID, @LOGINDAT, @LOGINTIM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFMACTIVSI] TO [DYNGRP]
GO
