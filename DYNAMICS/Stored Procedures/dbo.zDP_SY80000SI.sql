SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY80000SI] (@MODULEID smallint, @MODOPTIONS binary(4), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY80000 (MODULEID, MODOPTIONS) VALUES ( @MODULEID, @MODOPTIONS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY80000SI] TO [DYNGRP]
GO
