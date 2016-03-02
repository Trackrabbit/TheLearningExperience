SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_ORR_PostCapture]
  @batchNumber varchar(20), @batchSource varchar(20), @errCode int OUTPUT, @errDesc varchar(100) OUTPUT 
 AS 
 BEGIN 
   SET @errCode = 0 
   SET @errDesc = '' 
 END 
GO
GRANT EXECUTE ON  [dbo].[NDS_ORR_PostCapture] TO [DYNGRP]
GO
