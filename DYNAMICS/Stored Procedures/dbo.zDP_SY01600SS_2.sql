SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01600SS_2] (@CMPNYNAM char(65), @USERID char(15)) AS  set nocount on SELECT TOP 1  USERID, CMPNYNAM, FORMNAME, WINNAME, STICKPIN, DEX_ROW_ID FROM .SY01600 WHERE CMPNYNAM = @CMPNYNAM AND USERID = @USERID ORDER BY CMPNYNAM ASC, USERID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01600SS_2] TO [DYNGRP]
GO
