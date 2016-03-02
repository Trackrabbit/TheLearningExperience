SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY05200SI] (@DICTID smallint, @RESTYPE smallint, @RESID smallint, @RESTECHNAME char(81), @ExcludeFrom_1 tinyint, @ExcludeFrom_2 tinyint, @ExcludeFrom_3 tinyint, @ExcludeFrom_4 tinyint, @ExcludeFrom_5 tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY05200 (DICTID, RESTYPE, RESID, RESTECHNAME, ExcludeFrom_1, ExcludeFrom_2, ExcludeFrom_3, ExcludeFrom_4, ExcludeFrom_5) VALUES ( @DICTID, @RESTYPE, @RESID, @RESTECHNAME, @ExcludeFrom_1, @ExcludeFrom_2, @ExcludeFrom_3, @ExcludeFrom_4, @ExcludeFrom_5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05200SI] TO [DYNGRP]
GO
