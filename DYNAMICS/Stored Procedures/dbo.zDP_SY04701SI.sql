SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04701SI] (@SERVERID char(81), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04701 (SERVERID) VALUES ( @SERVERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04701SI] TO [DYNGRP]
GO