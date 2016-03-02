SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smRuleTestSendMail]   @emailid  varchar(255),  @ccids    varchar(255),  @bccids   varchar(255),  @emailmsg varchar(255) as   exec msdb.dbo.sp_send_dbmail   @recipients=@emailid,   @copy_recipients=@ccids,   @blind_copy_recipients=@bccids,   @body=@emailmsg,   @subject='TEST message from SQL Server'     
GO
GRANT EXECUTE ON  [dbo].[smRuleTestSendMail] TO [DYNGRP]
GO
