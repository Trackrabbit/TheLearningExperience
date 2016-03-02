SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK010230SI] (@EMPID_I char(15), @SKILLNUMBER_I smallint, @PARTWAGE_I tinyint, @EXPIREDSKILL_I datetime, @POINTS_I smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SK010230 (EMPID_I, SKILLNUMBER_I, PARTWAGE_I, EXPIREDSKILL_I, POINTS_I) VALUES ( @EMPID_I, @SKILLNUMBER_I, @PARTWAGE_I, @EXPIREDSKILL_I, @POINTS_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK010230SI] TO [DYNGRP]
GO
