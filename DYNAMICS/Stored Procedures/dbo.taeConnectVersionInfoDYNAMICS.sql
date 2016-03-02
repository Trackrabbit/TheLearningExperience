SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taeConnectVersionInfoDYNAMICS]  with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @cStatement varchar(255),  @CmdList1 varchar(1000),  @CmdList2 varchar(1000)  if exists (select * from tempdb.dbo.sysobjects where id = Object_id('tempdb.dbo.#VerList') and type = 'U')  drop table #VerList  create table #VerList (DatabaseName char(10), Version char(25), CompanyName char(65))  declare T_cursor insensitive cursor for select INTERID from DYNAMICS..SY01500 d (nolock), master..sysdatabases m (nolock) where d.INTERID = m.name  open T_cursor fetch next from T_cursor into @cStatement while (@@fetch_status <> -1) begin  select @CmdList1 = 'use '+@cStatement+' if (not exists(select 1 from sysobjects where name = ''taUpdateString'')) insert #VerList select cast(db_name()as char(10)),''Not Installed'','''' else if exists(select 1 from '  select @CmdList2 = @CmdList1+' sysobjects where name = ''taeConnectVersionInfo'') insert #VerList select cast(db_name() as char(10)), dbo.taeConnectVersionInfo(),'''' else insert #VerList select cast(db_name() as char(10)), ''Version Unavailable'',''''' 
   exec (@CmdList2)   fetch next from T_cursor into @cStatement end  deallocate T_cursor  update t set t.CompanyName = d.CMPNYNAM from #VerList t, DYNAMICS..SY01500 d (nolock) where t.DatabaseName = d.INTERID  select * from #VerList drop table #VerList  set nocount off   
GO
GRANT EXECUTE ON  [dbo].[taeConnectVersionInfoDYNAMICS] TO [DYNGRP]
GO
