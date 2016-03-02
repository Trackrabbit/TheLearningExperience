SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- ============================================= 
-- STORED PROCEDURE TO INSERT RECORDS IN  
-- THE TABLE WSExceptionLog 
-- GENERATED ON Jan 24 2005 11:00AM 
-- 
-- RETURN VALUES : 
--     0 THERE WERE NO ERRORS 
--   -99 UNEXPECTED NR OF RECORDS AFFECTED 
--   <>0 THE SQL ERROR NUMBER  
-- ============================================= 
CREATE PROCEDURE [dbo].[ws_insert_WSExceptionLog] 
( 
   @ExceptionType smallint, 
   @Exception image, 
   @BusinessObjectType varchar(100), 
   @ServiceType varchar(100), 
   @SystemUser varchar(100), 
   @CompanyId int, 
   @ExceptionMessage text, 
   @ContextXML text, 
   @RequestXML text, 
   @RETURNVALUE INT = NULL OUT 
) 
  
AS 
  
DECLARE @ERROR_VAR INT 
DECLARE @ROWCOUNT_VAR INT 
DECLARE @GUIDCol uniqueidentifier 
 
SET @GUIDCol = NEWID() 
 
INSERT dbo.WSExceptionLog ( 
	[LogId], 
	[ExceptionType], 
	[Exception], 
	[BusinessObjectType], 
	[ServiceType], 
	[SystemUser], 
	[CompanyId], 
	[ExceptionMessage], 
	[ContextXML], 
	[RequestXML] 
) 
VALUES ( 
   @GUIDCol, 
   @ExceptionType, 
   @Exception, 
   @BusinessObjectType, 
   @ServiceType, 
   @SystemUser, 
   @CompanyId, 
   @ExceptionMessage, 
   @ContextXML, 
   @RequestXML 
) 
  
SELECT @ERROR_VAR = @@ERROR,@ROWCOUNT_VAR=@@ROWCOUNT 
  
IF @ERROR_VAR = 0 AND @ROWCOUNT_VAR = 1 
   BEGIN 
      SELECT @GUIDCol AS '@@GUID' 
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
GRANT EXECUTE ON  [dbo].[ws_insert_WSExceptionLog] TO [DYNGRP]
GO
