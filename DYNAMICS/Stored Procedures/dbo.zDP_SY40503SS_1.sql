SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40503SS_1] (@BARULEID int, @DISPSEQ smallint, @COLUMNAM char(99)) AS  set nocount on SELECT TOP 1  BARULEID, DISPSEQ, COLUMNAM, COLHEADR, DEX_ROW_ID FROM .SY40503 WHERE BARULEID = @BARULEID AND DISPSEQ = @DISPSEQ AND COLUMNAM = @COLUMNAM ORDER BY BARULEID ASC, DISPSEQ ASC, COLUMNAM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40503SS_1] TO [DYNGRP]
GO
