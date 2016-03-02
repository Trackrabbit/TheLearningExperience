SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_SendMail] (@recipient varchar(99) = NULL, @subject varchar(100) = NULL,  @message nvarchar(max) = '')  as if @recipient is NULL or @message is NULL  begin   return -1  end  select @recipient = rtrim(ltrim(@recipient)) select @subject = rtrim(ltrim(@subject))  if substring(CONVERT(varchar(128), SERVERPROPERTY('ProductVersion')),1,PATINDEX('%.%', CONVERT(varchar(128), SERVERPROPERTY('ProductVersion'))) - 1) < 9 begin  exec master..xp_startmail   exec master..xp_sendmail @recipient,@message, '','','','', @subject   exec master..xp_stopmail  end else begin  exec msdb.dbo.sp_send_dbmail   @recipients = @recipient,  @body = @message,  @subject = @subject end  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_SendMail] TO [DYNGRP]
GO
