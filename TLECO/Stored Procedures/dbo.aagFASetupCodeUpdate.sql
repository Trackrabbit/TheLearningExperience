SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE      PROCEDURE [dbo].[aagFASetupCodeUpdate] @iaaFASetupID INT, @iListID INT, @iClassID INT, @oRequiredFieldEmpty TINYINT = 0 OUTPUT AS BEGIN   IF @iClassID = 0  RETURN 0   INSERT INTO AAG04001 (aaFASetupID,ListID,aaTrxDimID,aaTrxDimCodeID)   SELECT @iaaFASetupID, @iListID, aaTrxDimID, aaTrxDimCodeIDDflt  FROM AAG00202 WHERE aaAcctClassID = @iClassID and aaTrxDimID >=0   IF (SELECT MIN(aaTrxDimCodeIDDflt) FROM AAG00202 WHERE aaAcctClassID = @iClassID and aaTrxDimID >=0) = 0  SET @oRequiredFieldEmpty = 1  ELSE  SET @oRequiredFieldEmpty = 0 END   
GO
GRANT EXECUTE ON  [dbo].[aagFASetupCodeUpdate] TO [DYNGRP]
GO
