SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10901SS_1] (@IUSCOUNT smallint) AS  set nocount on SELECT TOP 1  IUSCOUNT, DEX_ROW_ID FROM .RM10901 WHERE IUSCOUNT = @IUSCOUNT ORDER BY IUSCOUNT ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10901SS_1] TO [DYNGRP]
GO