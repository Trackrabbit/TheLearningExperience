SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41100SS_1] (@STATECD char(3)) AS  set nocount on SELECT TOP 1  STATECD, STATENAM, DEX_ROW_ID FROM .UPR41100 WHERE STATECD = @STATECD ORDER BY STATECD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41100SS_1] TO [DYNGRP]
GO
