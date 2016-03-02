SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[NDS_Send_cdosysmail]
 @emailFrom varchar(100) , @emailTo varchar(100) , @Subject varchar(100)=" ", @emailBody varchar(4000) =" "
 AS 
  DECLARE @iMsg int, @hr int, @source varchar(255), @description varchar(500), @msgOutput varchar(4000), @cdt as datetime, @SMTPServer varchar(50), @AuthMode varchar(1), @Username varchar(50), @Password varchar(165), @DecryptedPassword varchar(165)
  SET @cdt = GETDATE()
  Set @SMTPServer = (SELECT RTRIM(NDS_SMTPServer) FROM MS273528)
  Set @AuthMode = (SELECT RTRIM(NDS_AuthMode) FROM MS273528)
  Set @Username = (SELECT RTRIM(NDS_UserName) FROM MS273528)
  Set @SMTPServer = RTRIM(@SMTPServer)
  Set @Password = (SELECT RTRIM(NDS_Password_PABP) FROM MS273528)
  IF @Password <> '' 
  BEGIN
  EXEC DYNAMICS.dbo.xp_NodusDecrypt @Password, @DecryptedPassword OUTPUT
  SET @Password = @DecryptedPassword
  IF @DecryptedPassword is not NULL
  SET @Password = @DecryptedPassword
  END
  IF (LEN(@emailFrom) = 0) BEGIN EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, 1, @hr, @source, @description, @msgOutput, 'No Email From provided' GOTO send_cdosysmail_cleanup END
  if (LEN(@emailTo) = 0) begin exec NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, 1, @hr, @source, @description, @msgOutput, 'No Email To provided' GOTO send_cdosysmail_cleanup end
  if (LEN(@Subject) = 0) begin exec NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, 1, @hr, @source, @description, @msgOutput, 'No Subjectprovided' GOTO send_cdosysmail_cleanup end
  if (LEN(@SMTPServer) = 0) begin exec NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, 1, @hr, @source, @description, @msgOutput, 'No SMTP Server provided' GOTO send_cdosysmail_cleanup end
  if (LEN(@AuthMode) = 0) begin exec NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, 1, @hr, @source, @description, @msgOutput, 'No Auth Mode provided' GOTO send_cdosysmail_cleanup end
  EXEC @hr = sp_OACreate 'CDO.Message', @iMsg OUT
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OACreate'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = 'Source: ' + @source
      SELECT @msgOutput = 'Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OACreate'
      RETURN
    END
    ELSE
    BEGIN
      PRINT 'sp_OAGetErrorInfo failed.'
      RETURN
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'Configuration.fields("http://schemas.microsoft.com/cdo/configuration/sendusing").Value','2'
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty sendusing'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty sendusing'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'Configuration.fields("http://schemas.microsoft.com/cdo/configuration/smtpserver").Value', @SMTPServer
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty smtpserver'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty smtpserver'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'Configuration.fields("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate").Value', @AuthMode
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty smtpAuthenticate'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty smtpAuthenticate'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'Configuration.fields("http://schemas.microsoft.com/cdo/configuration/sendusername").Value', @Username
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty sendusername'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty sendusername'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'Configuration.fields("http://schemas.microsoft.com/cdo/configuration/sendpassword").Value', @Password
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty sendpassword'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty sendpassword'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OAMethod @iMsg, 'Configuration.Fields.Update', null
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty Update'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty Update'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'To', @emailTo
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty To'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty To'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'From', @emailFrom
  IF @hr <> 0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty From'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty From'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'Subject', @Subject
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty Subject'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty Subject'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OASetProperty @iMsg, 'TextBody', @emailBody
  IF @hr <>0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OASetProperty TextBody'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OASetProperty TextBody'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
  EXEC @hr = sp_OAMethod @iMsg, 'Send', NULL
  IF @hr <> 0
  BEGIN
    SELECT @hr
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OAMethod Send'
    EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
    IF @hr = 0
    BEGIN
      SELECT @msgOutput = '  Source: ' + @source
      SELECT @msgOutput = '  Description: ' + @description
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OAMethod Send'
      GOTO send_cdosysmail_cleanup
    END
    ELSE
    BEGIN
      PRINT '  sp_OAGetErrorInfo failed.'
      GOTO send_cdosysmail_cleanup
    END
  END
 send_cdosysmail_cleanup:
  IF (@iMsg IS NOT NULL) -- if @iMsg is NOT NULL then destroy it
  BEGIN
    EXEC @hr=sp_OADestroy @iMsg
    IF @hr <>0
    BEGIN
      SELECT @hr
      EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'Failed at sp_OADestroy'
      EXEC @hr = sp_OAGetErrorInfo NULL, @source OUT, @description OUT
      IF @hr = 0
      BEGIN
        SELECT @msgOutput = '  Source: ' + @source
        SELECT @msgOutput = '  Description: ' + @description
        EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, 'sp_OAGetErrorInfo for sp_OADestroy'
      END
      ELSE
      BEGIN
        PRINT '  sp_OAGetErrorInfo failed.'
        RETURN
      END
    END
  END
  ELSE
  BEGIN
    PRINT ' sp_OADestroy skipped because @iMsg is NULL.'
    EXEC NDS_InsertInto_MS273529 @cdt, @@spid, @emailFrom, @emailTo, @Subject, @emailBody, @iMsg, @hr, @source, @description, @msgOutput, '@iMsg is NULL, sp_OADestroy skipped'
    RETURN
  END
GO
GRANT EXECUTE ON  [dbo].[NDS_Send_cdosysmail] TO [DYNGRP]
GO
