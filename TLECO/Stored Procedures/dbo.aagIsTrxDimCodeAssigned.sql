SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE     PROCEDURE [dbo].[aagIsTrxDimCodeAssigned] (  @aaTrxDimCodeID INTEGER  ,  @IsExists INTEGER OUT  ) AS  BEGIN  IF EXISTS (SELECT aaTrxDimCodeID FROM AAG00902 WHERE aaTrxDimCodeID = @aaTrxDimCodeID)  BEGIN  SELECT @IsExists = 1  END  ELSE  BEGIN  SELECT @IsExists = 0  END END    
GO
GRANT EXECUTE ON  [dbo].[aagIsTrxDimCodeAssigned] TO [DYNGRP]
GO
