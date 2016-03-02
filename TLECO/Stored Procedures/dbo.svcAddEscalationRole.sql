SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[svcAddEscalationRole] AS declare @rolename       sysname,  @membername     sysname  set @rolename = 'FSSQLJOB'  declare member_id cursor for select USERID from DYNAMICS..SY01400 where USERID <> 'sa' open member_id fetch next from member_id into @membername  while @@FETCH_STATUS = 0  BEGIN  if exists(select * from DYNAMICS.dbo.sysusers where name = @membername)  BEGIN   if not exists(select * from master.dbo.sysusers where name = @membername)  begin  exec master.dbo.sp_adduser @membername, @membername, @rolename  EXEC master.dbo.sp_addrolemember @rolename, @membername  print  @rolename + ' and ' + @membername  end   if not exists(select * from msdb.dbo.sysusers where name = @membername)  begin  exec msdb.dbo.sp_adduser @membername, @membername, @rolename  EXEC msdb.dbo.sp_addrolemember @rolename, @membername  print  @rolename + ' and ' + @membername  end   END  FETCH NEXT FROM member_id INTO @membername  END deallocate member_id  return     
GO
GRANT EXECUTE ON  [dbo].[svcAddEscalationRole] TO [DYNGRP]
GO
