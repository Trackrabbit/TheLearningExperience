SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV030121SS_2] (@REVWORDSETPNAM_I char(15)) AS  set nocount on SELECT TOP 1  REVIEWWORDSETINDEX_I, REVWORDSETPNAM_I, DEX_ROW_ID FROM .RV030121 WHERE REVWORDSETPNAM_I = @REVWORDSETPNAM_I ORDER BY REVWORDSETPNAM_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV030121SS_2] TO [DYNGRP]
GO
