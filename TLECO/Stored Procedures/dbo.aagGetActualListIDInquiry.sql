SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE          procedure [dbo].[aagGetActualListIDInquiry] @iaaFASetupID INT = 0,  @iListID INT = 0,  @oActualDistID  INT = 0 OUTPUT   as BEGIN  DECLARE @ListID INT,  @iDispDistID INT,  @Min INT,  @Series INT   select @ListID = 0, @Min = 0   SELECT A1.aaFASetupID, A1.ListID, IDENTITY(int,1,1) AS DisplayDistID INTO #newtable1 FROM AAG04001 A1  INNER JOIN AAG04000 A0 ON A0.aaFASetupID = A1.aaFASetupID  WHERE A0.aaFASetupID = @iaaFASetupID and A1.ListID > 0 AND  A0.aaBrowseType <> 0 AND A0.aaBrowseType <> 3  ORDER BY ListID  SELECT @ListID = ListID FROM #newtable1 WHERE DisplayDistID = ABS(@iDispDistID)    SELECT @oActualDistID = @ListID END   
GO
GRANT EXECUTE ON  [dbo].[aagGetActualListIDInquiry] TO [DYNGRP]
GO
