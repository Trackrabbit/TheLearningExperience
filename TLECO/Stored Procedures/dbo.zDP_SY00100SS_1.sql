SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00100SS_1] (@CMPANYID smallint) AS  set nocount on SELECT TOP 1  CMPANYID, DBNAME, DEX_ROW_ID FROM .SY00100 WHERE CMPANYID = @CMPANYID ORDER BY CMPANYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00100SS_1] TO [DYNGRP]
GO
