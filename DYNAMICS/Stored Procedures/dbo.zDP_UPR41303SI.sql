SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41303SI] (@SETUPKEY smallint, @LGPSTUDT datetime, @LUSTXUDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR41303 (SETUPKEY, LGPSTUDT, LUSTXUDT) VALUES ( @SETUPKEY, @LGPSTUDT, @LUSTXUDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41303SI] TO [DYNGRP]
GO
