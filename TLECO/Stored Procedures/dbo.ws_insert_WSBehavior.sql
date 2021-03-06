SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- ============================================= 
-- STORED PROCEDURE TO INSERT RECORDS IN  
-- THE TABLE WSBehavior 
-- GENERATED ON Jan 24 2005 11:04AM 
-- 
-- RETURN VALUES : 
--     0 THERE WERE NO ERRORS 
--   -99 UNEXPECTED NR OF RECORDS AFFECTED 
--   <>0 THE SQL ERROR NUMBER  
-- 
-- IF THE INSERT WENT WELL THE IDENTITY FIELD 
-- WILL HOLD THE INSERTED ID. 
-- ============================================= 
CREATE PROCEDURE [dbo].[ws_insert_WSBehavior] 
( 
   @BehaviorId     char(36),  
   @ResXAssemblyName     CHAR(250),  
   @DescriptionResXId     CHAR(100),  
   @NameResXId     CHAR(100),  
   @RETURNVALUE INT = NULL OUT 
) 
  
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
  
INSERT dbo.WSBehavior ( 
   [BehaviorId], 
   [ResXAssemblyName], 
   [DescriptionResXId], 
   [NameResXId] 
) 
VALUES ( 
   @BehaviorId, 
   @ResXAssemblyName, 
   @DescriptionResXId, 
   @NameResXId 
) 
  
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
GRANT EXECUTE ON  [dbo].[ws_insert_WSBehavior] TO [DYNGRP]
GO
