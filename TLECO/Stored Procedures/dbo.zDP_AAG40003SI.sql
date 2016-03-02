SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40003SI] (@aaGLHdrID int, @aaGLDistID int, @aaGLAssignID int, @aaTrxDimID int, @aaTrxCodeID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG40003 (aaGLHdrID, aaGLDistID, aaGLAssignID, aaTrxDimID, aaTrxCodeID) VALUES ( @aaGLHdrID, @aaGLDistID, @aaGLAssignID, @aaTrxDimID, @aaTrxCodeID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40003SI] TO [DYNGRP]
GO
