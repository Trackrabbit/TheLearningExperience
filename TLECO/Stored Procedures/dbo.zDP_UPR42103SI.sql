SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42103SI] (@Pay_Schedule char(15), @DEPRTMNT char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR42103 (Pay_Schedule, DEPRTMNT) VALUES ( @Pay_Schedule, @DEPRTMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42103SI] TO [DYNGRP]
GO
