SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00940SI] (@SRVCCD char(11), @SRVCCDDSC char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00940 (SRVCCD, SRVCCDDSC) VALUES ( @SRVCCD, @SRVCCDDSC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00940SI] TO [DYNGRP]
GO