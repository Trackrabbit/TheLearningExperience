SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SUSPREFSI] (@IINDEX_I smallint, @POINTS_I smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SUSPREF (IINDEX_I, POINTS_I) VALUES ( @IINDEX_I, @POINTS_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SUSPREFSI] TO [DYNGRP]
GO
