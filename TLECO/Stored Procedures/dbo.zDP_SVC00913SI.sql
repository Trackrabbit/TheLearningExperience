SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00913SI] (@SRVSTAT char(3), @STSDESCR char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00913 (SRVSTAT, STSDESCR) VALUES ( @SRVSTAT, @STSDESCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00913SI] TO [DYNGRP]
GO
