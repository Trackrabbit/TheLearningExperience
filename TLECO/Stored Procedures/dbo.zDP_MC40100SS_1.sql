SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40100SS_1] (@RATETPID char(15)) AS  set nocount on SELECT TOP 1  RATETPID, DEX_ROW_ID FROM .MC40100 WHERE RATETPID = @RATETPID ORDER BY RATETPID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40100SS_1] TO [DYNGRP]
GO
