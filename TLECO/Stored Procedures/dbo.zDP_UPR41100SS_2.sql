SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41100SS_2] (@STATENAM char(21), @STATECD char(3)) AS  set nocount on SELECT TOP 1  STATECD, STATENAM, DEX_ROW_ID FROM .UPR41100 WHERE STATENAM = @STATENAM AND STATECD = @STATECD ORDER BY STATENAM ASC, STATECD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41100SS_2] TO [DYNGRP]
GO
