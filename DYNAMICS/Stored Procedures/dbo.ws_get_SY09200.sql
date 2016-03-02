SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ws_get_SY09200]  
(  
   @SECMODALTID   char(25)= NULL,  
   @SECMODALTDESC   char(51) = NULL,  
   @CRUSRID   char(15) = NULL,  
   @CREATDDT   datetime = NULL,  
   @MDFUSRID   char(15) = NULL,  
   @MODIFDT   datetime = NULL,  
   @DEX_ROW_ID   int = NULL,  
   @RETURNVALUE INT = NULL OUT  
)  
AS  
   
DECLARE @ERROR_VAR INT  
DECLARE @ROWCOUNT_VAR INT  
   
SELECT   
   [SECMODALTID],  
   [SECMODALTDESC],  
   [CRUSRID],  
   [CREATDDT],  
   [MDFUSRID],  
   [MODIFDT],  
   [DEX_ROW_ID]  
FROM [dbo].[SY09200]  
WHERE  
   [SECMODALTID] = case when @SECMODALTID IS NULL then [SECMODALTID] else @SECMODALTID end AND  
   [SECMODALTDESC] = case when @SECMODALTDESC IS NULL then [SECMODALTDESC] else @SECMODALTDESC end AND  
   [CRUSRID] = case when @CRUSRID IS NULL then [CRUSRID] else @CRUSRID end AND  
   [CREATDDT] = case when @CREATDDT IS NULL then [CREATDDT] else @CREATDDT end AND  
   [MDFUSRID] = case when @MDFUSRID IS NULL then [MDFUSRID] else @MDFUSRID end AND  
   [MODIFDT] = case when @MODIFDT IS NULL then [MODIFDT] else @MODIFDT end AND  
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
GRANT EXECUTE ON  [dbo].[ws_get_SY09200] TO [DYNGRP]
GO
