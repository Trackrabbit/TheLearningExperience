SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04920SI] (@USERID char(15), @Exchange_Address char(238), @Exchange_Server_URL char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04920 (USERID, Exchange_Address, Exchange_Server_URL) VALUES ( @USERID, @Exchange_Address, @Exchange_Server_URL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04920SI] TO [DYNGRP]
GO
