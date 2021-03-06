SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
-- ============================================= 
-- STORED PROCEDURE TO GET VALIDATION EXCEPTION IN  
-- THE TABLE WSExceptionLog 
-- GENERATED ON Jul 28 2005 02:19PM 
-- 
-- RETURN VALUES : 
--     0 THERE WERE NO ERRORS 
--   -99 UNEXPECTED NR OF RECORDS AFFECTED 
--   <>0 THE SQL ERROR NUMBER  
-- 
-- ============================================= 
 
CREATE PROCEDURE [dbo].[ws_get_WSExceptionLog_ValidationException] 
( 
   @LogId   uniqueidentifier = NULL, 
   @RETURNVALUE INT = NULL OUT 
) 
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
  
SELECT  
   [Exception] 
FROM [dbo].[WSExceptionLog] 
WHERE 
   [LogId] = @LogId AND 
   [ExceptionType] = 0 
  
SELECT @ERROR_VAR = @@ERROR,@ROWCOUNT_VAR=@@ROWCOUNT 
  
IF @ERROR_VAR = 0 AND @ROWCOUNT_VAR = 1 
   BEGIN 
      SET @RETURNVALUE = 0 
   END 
ELSE 
   BEGIN 
      IF @ERROR_VAR <> 0  
         SET @RETURNVALUE = @ERROR_VAR 
      ELSE 
         SET @RETURNVALUE =  -99 -- UNEXPECTED NR OF RECORDS AFFECTED 
   END 
  
GO
GRANT EXECUTE ON  [dbo].[ws_get_WSExceptionLog_ValidationException] TO [DYNGRP]
GO
