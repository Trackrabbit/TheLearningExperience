SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
  
CREATE PROCEDURE [dbo].[ws_getall_WSUserAssignableBusinessObjectTypes]  
(  
   @RETURNVALUE INT = NULL OUT  
)  
AS  
   
DECLARE @ERROR_VAR INT  
DECLARE @ROWCOUNT_VAR INT  
   
SELECT   
   [Id],  
   [Name],  
   [ProviderAssembly],  
   [ProviderClass] 
FROM [dbo].WSUserAssignableBusinessObjectTypes  
   
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
GRANT EXECUTE ON  [dbo].[ws_getall_WSUserAssignableBusinessObjectTypes] TO [DYNGRP]
GO
