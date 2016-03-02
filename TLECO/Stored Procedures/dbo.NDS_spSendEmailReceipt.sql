SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[NDS_spSendEmailReceipt] (@instanceGuid varchar(201)) 
 AS 
BEGIN 
  DECLARE @iMsg int, @hr int, @source varchar(255), @description varchar(255), @msgOutput varchar(1000) 
  DECLARE @userId varchar(50), @pwd varchar(50), @dbname varchar(50), @dbserver varchar(50), @guid varchar(201) 
  
  SELECT TOP 1 @userId = RTRIM(NDS_DBUser), @pwd = RTRIM(NDS_DBPassword_PABP), @dbname = RTRIM(NDS_DBName), @dbserver = RTRIM(NDS_DBServer) FROM MS273528 
  EXEC @hr = sp_OACreate 'NodusNetCaller.CallFunction', @iMsg OUT 
  IF @hr <> 0 
  BEGIN 
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0 
    BEGIN 
      PRINT 'FAILED CREATING OBJECT' 
      PRINT @source 
      PRINT @description 
    END 
    ELSE 
    BEGIN 
      PRINT 'FAILED GETTING ERROR MESSAGE' 
      RETURN 
    END 
  END 
  
  EXEC @hr = sp_OAMethod @iMsg, 'SendEmailReceipt', @msgOutput OUTPUT, @userId, @pwd, @dbname, @dbserver, @instanceGuid 
  --EXEC @hr = sp_OAMethod @iMsg, 'TestString', @msgOutput, @userId, @pwd, @dbname, @dbserver, @instanceGuid 
  IF @hr <> 0 
  BEGIN 
    EXEC @hr = spOAGetErrorInfo NULL, @source OUT, @description OUT 
      IF @hr = 0 
      BEGIN 
        PRINT 'FAILED EXECUTING METHOD SEND EMAIL RECEIPT' 
        PRINT @source 
        PRINT @description 
        GOTO NDS_spSendEmailReceipt_CLEANUP
      END 
      ELSE 
      BEGIN 
        PRINT 'FAILED GETTING ERROR MESSAGE' 
        GOTO NDS_spSendEmailReceipt_CLEANUP 
      END 
  END 
  ELSE 
  BEGIN 
    PRINT @msgOutput 
  END 
  
 NDS_spSendEmailReceipt_CLEANUP: 
  IF (@iMsg IS NOT NULL) 
  BEGIN 
    EXEC @hr = sp_OADestroy @iMsg 
    IF @hr <> 0 
    BEGIN 
      EXEC @hr = spOAGetErrorInfo NULL, @source OUT, @description OUT 
      IF @hr = 0 
      BEGIN 
        PRINT 'FAILED DESTROY OBJECT' 
        PRINT @source 
        PRINT @description 
      END 
      ELSE 
      BEGIN 
        PRINT 'FAILED GETTING ERROR MESSAGE' 
        RETURN; 
      END 
    END 
  END 
  ELSE 
  BEGIN 
    PRINT 'sp_OADestroy skipped because @iMsg is NULL.' 
    RETURN 
  END 
END 

GO
GRANT EXECUTE ON  [dbo].[NDS_spSendEmailReceipt] TO [DYNGRP]
GO
