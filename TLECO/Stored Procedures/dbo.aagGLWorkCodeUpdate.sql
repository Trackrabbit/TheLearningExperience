SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE      procedure [dbo].[aagGLWorkCodeUpdate] @iHdrID   int, @iDistID   int, @iAssignID   int, @iClassID   int, @oRequiredFieldEmpty tinyint = 0 output  As  Begin   if @iClassID = 0  Return 0  Insert into AAG10003 (aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID,aaTrxDimID, aaTrxCodeID, aaCodeErrors)   Select @iHdrID, @iDistID, @iAssignID, aaTrxDimID, aaTrxDimCodeIDDflt, 0  from AAG00202 where aaAcctClassID = @iClassID and aaTrxDimID >=0  If (select min(aaTrxDimCodeIDDflt) from AAG00202 where aaAcctClassID = @iClassID and aaTrxDimID >=0) = 0  Set @oRequiredFieldEmpty = 1  Else  Set @oRequiredFieldEmpty = 0 End    
GO
GRANT EXECUTE ON  [dbo].[aagGLWorkCodeUpdate] TO [DYNGRP]
GO
