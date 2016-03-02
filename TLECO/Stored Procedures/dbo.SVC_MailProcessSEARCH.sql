SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_MailProcessSEARCH] @msg_id varchar(64)  as declare @subject varchar(255) declare @status int declare @originator varchar(255) declare @cc_list varchar(255) declare @query varchar(255) declare @cmd varchar(255) declare @custname varchar(60) declare @password varchar(255) declare @CUSTOMER varchar(255) declare @PASSWORD2 varchar(255) declare @KEYWORD2 varchar(255) declare @SERIAL varchar(255) declare @DESCR varchar(255) declare @EQUIPID integer declare @CUSTREF varchar(255) declare @CALLNBR varchar(255) declare @EMAIL varchar(255) declare @CONTACT varchar(255) declare @PHONE varchar(20) declare @separator varchar(3) declare @dbuse varchar(30) select @separator=CHAR(9) select @dbuse = DB_NAME() PRINT 'PROCESS SEARCH' exec @status = master..xp_readmail  @msg_id=@msg_id,  @originator=@originator output,  @cc_list=@cc_list output,  @subject=@subject output,  @message=@query output,  @peek='true',   @suppress_attach='true' exec @status = SVC_Mail_parse_for_keywords @query,   @CUSTOMER out,   @PASSWORD2 out,   @KEYWORD2 out,   @SERIAL out,   @DESCR out,   @CUSTREF out,  @EMAIL out,  @CONTACT out,  @PHONE out select @custname=CUSTNAME,   @password=USERDEF2  from RM00101  where CUSTNMBR = @CUSTOMER  if @CUSTOMER is null or @custname is null  begin  exec SVC_SendMail @originator, 'Invalid Customer',  'The customer you entered is not valid.'  return  end  if @password <> @PASSWORD2 or @password is null or @PASSWORD2 is null  begin  exec SVC_SendMail @originator, 'Invalid Password',  'The password you entered is not valid.'  return  end  if @EMAIL is null  begin  exec SVC_SendMail @originator, 'Empty E-Mail Adddress',  'You MUST supply an e-mail address. Use EMAIL:xxxxx@yyyy.'  return  end  select @cmd = 'select SVC00801.CALLNBR, SVC00200.SVCDESCR from SVC00801, SVC00200 where SOUNDEX(SVC00801.Keyword) = '''   + soundex(@KEYWORD2) + ''' and SVC00200.CALLNBR = SVC00801.CALLNBR' select @subject = 'Calls Searched For ' + @KEYWORD2 exec @status = master..xp_sendmail  @recipients=@EMAIL,  @copy_recipients=@cc_list,  @query=@cmd,  @subject=@subject,  @separator=@separator,  @width=256,  @attach_results='true',  @no_output='false',  @echo_error='true',  @dbuse=@dbuse    
GO
GRANT EXECUTE ON  [dbo].[SVC_MailProcessSEARCH] TO [DYNGRP]
GO
