SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_MailProcessTIMESHEET] @msg_id varchar(64) ,@user varchar(30), @pwd varchar(30) as declare @subject varchar(255) declare @status int declare @originator varchar(255) declare @cc_list varchar(255) declare @msgsubject varchar(255) declare @query varchar(255) declare @messages int declare @mapifailure int declare @resultmsg varchar(80) declare @filename varchar(255) declare @current_msg varchar(64) declare @cmd varchar(255) declare @custname varchar(60) declare @password varchar(255) declare @cmdline varchar(255) declare @CUSTOMER varchar(255) declare @PASSWORD2 varchar(255) declare @KEYWORD2 varchar(255) declare @SERIAL varchar(255) declare @DESCR varchar(255) declare @EQUIPID integer declare @CUSTREF varchar(255) declare @CALLNBR varchar(255) declare @CommandLine varchar(255) declare @database varchar(30) declare @separator varchar(3) declare @dbuse varchar(30) select @messages=0 select @mapifailure=0 select @separator=CHAR(9) select @dbuse = DB_NAME() select @database = DB_NAME()  select @filename= convert(varchar,ROUND((@@CPU_BUSY+@@IDLE) % 10000000,0)) + '.ts' exec @status = master..xp_readmail  @msg_id=@msg_id,  @originator=@originator output,  @cc_list=@cc_list output,  @subject=@msgsubject output,  @message=@query output,  @peek='true',   @suppress_attach='false',  @attachments = @filename output select @CommandLine = 'bcp ' + @database + '..SVC_Time_Sheet in ' + @filename + ' -U' + @user + ' -P'   + @pwd + ' -S' + @@servername + ' -c -t\t -r\n' EXEC @status = master..xp_cmdshell @CommandLine select @CommandLine = 'del ' + @filename EXEC master..xp_cmdshell @CommandLine exec SVC_MailProcess_Time_Sheet    
GO
GRANT EXECUTE ON  [dbo].[SVC_MailProcessTIMESHEET] TO [DYNGRP]
GO