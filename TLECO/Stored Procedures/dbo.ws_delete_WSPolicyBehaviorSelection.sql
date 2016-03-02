SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- ============================================= 
-- STORED PROCEDURE TO DELETE RECORDS IN  
-- THE TABLE WSPolicyBehaviorSelection 
-- GENERATED ON Jan 24 2005 11:07AM 
-- 
-- RETURN VALUES : 
--     0 THERE WERE NO ERRORS 
--   -99 UNEXPECTED NR OF RECORDS AFFECTED 
--   <>0 THE SQL ERROR NUMBER  
-- 
-- ============================================= 
CREATE PROCEDURE [dbo].[ws_delete_WSPolicyBehaviorSelection] 
( 
   @PolicyId   char(36)=NULL, 
   @BehaviorId   char(36)=NULL, 
   @RoleId   char(36)=NULL, 
   @SelectedBehaviorOptionId smallint=NULL, 
   @RETURNVALUE INT = NULL OUT 
) 
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
  
   DELETE FROM dbo.WSPolicyBehaviorSelection 
   WHERE 
   [PolicyId] = case when @PolicyId IS NULL then [PolicyId] else @PolicyId end AND 
   [BehaviorId] = case when @BehaviorId IS NULL then [BehaviorId] else @BehaviorId end AND 
   [RoleId] = case when @RoleId IS NULL then [RoleId] else @RoleId end AND 
   [SelectedBehaviorOptionId] = case when @SelectedBehaviorOptionId IS NULL then [SelectedBehaviorOptionId] else @SelectedBehaviorOptionId end 
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
GRANT EXECUTE ON  [dbo].[ws_delete_WSPolicyBehaviorSelection] TO [DYNGRP]
GO
