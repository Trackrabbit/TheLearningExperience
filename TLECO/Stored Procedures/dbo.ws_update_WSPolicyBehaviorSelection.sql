SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- ============================================= 
-- STORED PROCEDURE TO UPDATE RECORDS IN  
-- THE TABLE WSPolicyBehaviorSelection 
-- GENERATED ON Jan 24 2005 11:07AM 
-- 
-- RETURN VALUES : 
--     0 THERE WERE NO ERRORS 
--   -99 UNEXPECTED NR OF RECORDS AFFECTED 
--   <>0 THE SQL ERROR NUMBER  
-- 
-- IF THE INSERT WENT WELL THE IDENTITY FIELD 
-- WILL HOLD THE INSERTED ID. 
-- ============================================= 
CREATE PROCEDURE [dbo].[ws_update_WSPolicyBehaviorSelection] 
( 
   @PolicyId     char(36),  
   @BehaviorId     char(36),  
   @RoleId     char(36),  
   @SelectedBehaviorOptionId     smallint,  
   @RETURNVALUE INT = NULL OUT 
) 
  
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
IF EXISTS(SELECT * FROM dbo.WSPolicyBehaviorSelection WHERE PolicyId = @PolicyId AND BehaviorId = @BehaviorId AND RoleId = @RoleId) 
   BEGIN 
      UPDATE dbo.WSPolicyBehaviorSelection  
      SET SelectedBehaviorOptionId = @SelectedBehaviorOptionId  
      WHERE PolicyId = @PolicyId AND BehaviorId = @BehaviorId AND RoleId = @RoleId 
   END 
ELSE 
   BEGIN 
      EXEC dbo.ws_insert_WSPolicyBehaviorSelection @PolicyId, @BehaviorId, @RoleId, @SelectedBehaviorOptionId 
   END 
 
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
GRANT EXECUTE ON  [dbo].[ws_update_WSPolicyBehaviorSelection] TO [DYNGRP]
GO
