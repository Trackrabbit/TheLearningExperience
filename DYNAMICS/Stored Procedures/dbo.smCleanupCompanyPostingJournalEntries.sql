SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smCleanupCompanyPostingJournalEntries]  @O_iErrorState int    = NULL   output as  declare @count as integer declare @exestring as varchar(400) declare @curcompany as varchar(10) if exists (select * from dbo.sysobjects where id =   Object_id('dbo.#PJTEMP') and type in ('U','S')) begin  drop table dbo.#PJTEMP end  select INTERID into #PJTEMP from SY01500 select @count = count(*) from #PJTEMP  while @count > 0  begin  select @curcompany = (select top 1(INTERID) from #PJTEMP)  select @exestring = @curcompany + '.dbo.smCleanupPostingJournalEntries'  if exists(select name from master..sysdatabases where name = @curcompany)  begin  exec @exestring  end  delete from #PJTEMP where INTERID = @curcompany  select @count = count(*) from #PJTEMP end  return    
GO
GRANT EXECUTE ON  [dbo].[smCleanupCompanyPostingJournalEntries] TO [DYNGRP]
GO
