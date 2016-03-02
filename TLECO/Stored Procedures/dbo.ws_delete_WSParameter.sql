SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- ============================================= 
-- STORED PROCEDURE TO DELETE RECORDS IN  
-- THE TABLE WSParameter 
-- GENERATED ON Jan 24 2005 11:06AM 
-- 
-- RETURN VALUES : 
--     0 THERE WERE NO ERRORS 
--   -99 UNEXPECTED NR OF RECORDS AFFECTED 
--   <>0 THE SQL ERROR NUMBER  
-- 
-- ============================================= 
CREATE PROCEDURE [dbo].[ws_delete_WSParameter] 
( 
   @BehaviorId   char(36)=NULL, 
   @BehaviorOptionId   smallint=NULL, 
   @ParameterId   smallint=NULL, 
   @RETURNVALUE INT = NULL OUT 
) 
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
  
   DELETE FROM dbo.WSParameter 
   WHERE 
   [BehaviorId] = case when @BehaviorId IS NULL then [BehaviorId] else @BehaviorId end AND 
   [BehaviorOptionId] = case when @BehaviorOptionId IS NULL then [BehaviorOptionId] else @BehaviorOptionId end AND 
   [ParameterId] = case when @ParameterId IS NULL then [ParameterId] else @ParameterId end 
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
         SET @RETURNVALUE = -99 -- UNEXPECTED NR OF RECORDS AFFECTED 
   END 
GO
GRANT EXECUTE ON  [dbo].[ws_delete_WSParameter] TO [DYNGRP]
GO
