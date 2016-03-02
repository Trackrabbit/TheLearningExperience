SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00101SI] (@TECHID char(11), @STRTDATE datetime, @STRTTIME datetime, @ENDDATE datetime, @ENDTME datetime, @TECHSTAT char(11), @TECHID2 char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00101 (TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTME, TECHSTAT, TECHID2) VALUES ( @TECHID, @STRTDATE, @STRTTIME, @ENDDATE, @ENDTME, @TECHSTAT, @TECHID2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00101SI] TO [DYNGRP]
GO