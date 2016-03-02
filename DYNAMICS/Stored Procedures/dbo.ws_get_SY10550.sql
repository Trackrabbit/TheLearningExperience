SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ws_get_SY10550]  
(  
   @USERID   char(15)= NULL,  
   @CMPANYID   smallint = NULL,  
   @SECMODALTID   char(25) = NULL,  
   @DEX_ROW_ID   int = NULL,  
   @RETURNVALUE INT = NULL OUT  
)  
AS  
   
DECLARE @ERROR_VAR INT  
DECLARE @ROWCOUNT_VAR INT  
   
SELECT   
   [USERID],  
   [CMPANYID],  
   [SECMODALTID],  
   [DEX_ROW_ID]  
FROM [dbo].[SY10550]  
WHERE  
   [USERID] = case when @USERID IS NULL then [USERID] else @USERID end AND  
   [CMPANYID] = case when @CMPANYID IS NULL then [CMPANYID] else @CMPANYID end AND  
   [SECMODALTID] = case when @SECMODALTID IS NULL then [SECMODALTID] else @SECMODALTID end AND  
   [DEX_ROW_ID] = case when @DEX_ROW_ID IS NULL then [DEX_ROW_ID] else @DEX_ROW_ID end  
   
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
GRANT EXECUTE ON  [dbo].[ws_get_SY10550] TO [DYNGRP]
GO
