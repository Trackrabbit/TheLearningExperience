SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
-- =============================================  
-- STORED PROCEDURE TO GET RECORDS IN   
-- THE TABLE WSExceptionLog  
-- GENERATED ON Jul 28 2005 02:19PM  
--  
-- RETURN VALUES :  
--     0 THERE WERE NO ERRORS  
--   <>0 THE SQL ERROR NUMBER   
--  
-- =============================================  
  
CREATE PROCEDURE [dbo].[ws_get_WSExceptionLog_Summary]  
(  
   @BeginDate   datetime = NULL,  
   @EndDate   datetime = NULL,  
   @RETURNVALUE INT = NULL OUT  
)  
AS  
   
DECLARE @ERROR_VAR INT  
DECLARE @ROWCOUNT_VAR INT  
   
SELECT   
   [LogId],  
   [ExceptionMessage],  
   [ExceptionType],  
   [BusinessObjectType],  
   [ServiceType],  
   [SystemUser],  
   [CMPNYNAM] AS [CompanyName],  
   [CreatedDate]  
FROM [dbo].[WSExceptionLog] 
LEFT JOIN [dbo].[SY01500] 
ON [dbo].[WSExceptionLog].[CompanyId] = [dbo].[SY01500].[CMPANYID] 
 
WHERE  
   [CreatedDate] >= @BeginDate AND 
   [CreatedDate] <= @EndDate 
ORDER BY [CreatedDate] DESC 
   
SELECT @ERROR_VAR = @@ERROR,@ROWCOUNT_VAR=@@ROWCOUNT  
   
IF @ERROR_VAR = 0 
   BEGIN  
      SET @RETURNVALUE = 0  
   END  
ELSE  
   BEGIN  
      SET @RETURNVALUE = @ERROR_VAR  
   END  
   
 
GO
GRANT EXECUTE ON  [dbo].[ws_get_WSExceptionLog_Summary] TO [DYNGRP]
GO
