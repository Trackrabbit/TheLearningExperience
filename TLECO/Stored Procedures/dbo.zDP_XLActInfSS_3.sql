SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_XLActInfSS_3] (@ACTINDX int) AS  set nocount on SELECT TOP 1  FILEIDX, ACTINDX, DEX_ROW_ID FROM .XLActInf WHERE ACTINDX = @ACTINDX ORDER BY ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_XLActInfSS_3] TO [DYNGRP]
GO
