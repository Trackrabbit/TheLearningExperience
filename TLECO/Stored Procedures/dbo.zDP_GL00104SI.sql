SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00104SI] (@ACTINDX int, @SEPRATR1 tinyint, @DSTINDX int, @SEPRATR2 tinyint, @BDNINDX int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL00104 (ACTINDX, SEPRATR1, DSTINDX, SEPRATR2, BDNINDX) VALUES ( @ACTINDX, @SEPRATR1, @DSTINDX, @SEPRATR2, @BDNINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00104SI] TO [DYNGRP]
GO
