SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD010000SI] (@DOWNDAYS_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DD010000 (DOWNDAYS_I) VALUES ( @DOWNDAYS_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD010000SI] TO [DYNGRP]
GO