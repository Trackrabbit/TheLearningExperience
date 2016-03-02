SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_ISC_SendMail]  @recipient varchar(99) = NULL, @subject nvarchar(255) = NULL,  @message nvarchar(max) = '' as  if substring(CONVERT(varchar(128), SERVERPROPERTY('ProductVersion')),1,PATINDEX('%.%', CONVERT(varchar(128), SERVERPROPERTY('ProductVersion'))) - 1) < 9 begin  exec master..xp_startmail   exec master..xp_sendmail @recipient,@message, '','','','', @subject   exec master..xp_stopmail  end else begin  exec msdb.dbo.sp_send_dbmail   @recipients = @recipient,  @body = @message,  @subject = @subject end    
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_SendMail] TO [DYNGRP]
GO
