SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10901SI] (@IUSCOUNT smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM10901 (IUSCOUNT) VALUES ( @IUSCOUNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10901SI] TO [DYNGRP]
GO
