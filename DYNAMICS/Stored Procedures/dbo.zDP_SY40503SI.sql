SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40503SI] (@BARULEID int, @DISPSEQ smallint, @COLUMNAM char(99), @COLHEADR char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY40503 (BARULEID, DISPSEQ, COLUMNAM, COLHEADR) VALUES ( @BARULEID, @DISPSEQ, @COLUMNAM, @COLHEADR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40503SI] TO [DYNGRP]
GO