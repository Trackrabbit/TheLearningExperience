SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10003SI] (@aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkAssignID int, @aaTrxDimID int, @aaTrxCodeID int, @aaCodeErrors binary(4), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG10003 (aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaTrxDimID, aaTrxCodeID, aaCodeErrors) VALUES ( @aaGLWorkHdrID, @aaGLWorkDistID, @aaGLWorkAssignID, @aaTrxDimID, @aaTrxCodeID, @aaCodeErrors) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10003SI] TO [DYNGRP]
GO
