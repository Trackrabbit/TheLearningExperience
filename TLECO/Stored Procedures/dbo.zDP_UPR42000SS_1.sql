SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42000SS_1] (@STATUSCD char(15)) AS  set nocount on SELECT TOP 1  STATUSCD, STSDESCR, STATUSTYPE, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR42000 WHERE STATUSCD = @STATUSCD ORDER BY STATUSCD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42000SS_1] TO [DYNGRP]
GO