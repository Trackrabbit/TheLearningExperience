SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD40400SS_1] (@CMPANYID smallint, @DDDESC10 char(11), @INDXLONG int) AS  set nocount on SELECT TOP 1  CMPANYID, DDDESC10, INDXLONG, DDLINE, DEX_ROW_ID FROM .DD40400 WHERE CMPANYID = @CMPANYID AND DDDESC10 = @DDDESC10 AND INDXLONG = @INDXLONG ORDER BY CMPANYID ASC, DDDESC10 ASC, INDXLONG ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD40400SS_1] TO [DYNGRP]
GO