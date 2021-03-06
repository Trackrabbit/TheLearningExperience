SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY03400SS_1] (@USERID char(15), @FILENAME char(45), @INDXLONG int) AS  set nocount on SELECT TOP 1  USERID, INDXLONG, FILENAME, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SY03400 WHERE USERID = @USERID AND FILENAME = @FILENAME AND INDXLONG = @INDXLONG ORDER BY USERID ASC, FILENAME ASC, INDXLONG ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03400SS_1] TO [DYNGRP]
GO
