SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV030121SS_1] (@REVIEWWORDSETINDEX_I int) AS  set nocount on SELECT TOP 1  REVIEWWORDSETINDEX_I, REVWORDSETPNAM_I, DEX_ROW_ID FROM .RV030121 WHERE REVIEWWORDSETINDEX_I = @REVIEWWORDSETINDEX_I ORDER BY REVIEWWORDSETINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV030121SS_1] TO [DYNGRP]
GO
