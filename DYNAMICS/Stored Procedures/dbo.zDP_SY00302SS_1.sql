SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY00302SS_1] (@SGMTNUMB smallint) AS  set nocount on SELECT TOP 1  SGMTNUMB, SGMTNAME, SGMNTLTH, USDFSGKY, DEX_ROW_ID FROM .SY00302 WHERE SGMTNUMB = @SGMTNUMB ORDER BY SGMTNUMB ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00302SS_1] TO [DYNGRP]
GO
