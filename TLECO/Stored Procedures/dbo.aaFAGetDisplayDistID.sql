SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[aaFAGetDisplayDistID] @iaaFASetupID INT = 0,  @iListID SMALLINT = 0 OUTPUT,  @oDisplayDistID INT = 0 OUTPUT  AS BEGIN  DECLARE @DistID int   SELECT @DistID = 0   IF EXISTS (SELECT TOP 1 1 FROM AAG04000 WHERE aaFASetupID = @iaaFASetupID and ListID > 0 AND aaBrowseType <> 0 AND aaBrowseType <> 3)  BEGIN  SELECT aaFASetupID, ListID, IDENTITY(int, 1,1) AS DisplayDistID INTO ##TempDiplayListID FROM AAG04000   WHERE aaFASetupID = @iaaFASetupID and ListID > 0 and aaBrowseType <> 0 and aaBrowseType <> 3  ORDER by ListID   IF @iListID=0  and @oDisplayDistID!=0   BEGIN  SELECT @iListID = ListID FROM ##TempDiplayListID  WHERE DisplayDistID= @oDisplayDistID   END   ELSE  BEGIN   SELECT @DistID = DisplayDistID FROM ##TempDiplayListID  WHERE ListID= @iListID   SELECT @oDisplayDistID = @DistID  END  DROP TABLE ##TempDiplayListID  END END   
GO
GRANT EXECUTE ON  [dbo].[aaFAGetDisplayDistID] TO [DYNGRP]
GO
