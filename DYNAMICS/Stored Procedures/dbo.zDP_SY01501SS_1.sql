SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01501SS_1] (@CMPANYID smallint, @ImageID smallint) AS  set nocount on SELECT TOP 1  CMPANYID, ImageID, fileName, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .SY01501 WHERE CMPANYID = @CMPANYID AND ImageID = @ImageID ORDER BY CMPANYID ASC, ImageID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01501SS_1] TO [DYNGRP]
GO
