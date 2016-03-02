SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[wfOutOfOfficeDelegationCleanupCompany]  @O_iErrorState int    = NULL   output as  declare @count as integer declare @exestring as varchar(400) declare @curcompany as varchar(10) if exists (select * from dbo.sysobjects where id =   Object_id('dbo.#wfDelegateCleanupTemp') and type in ('U','S')) begin  drop table dbo.#wfDelegateCleanupTemp end  select INTERID into #wfDelegateCleanupTemp from SY01500  select @count = count(*) from #wfDelegateCleanupTemp  while @count > 0  begin  select @curcompany = (select top 1(INTERID) from #wfDelegateCleanupTemp)  select @exestring = @curcompany + '.dbo.wfOutOfOfficeDelegationCleanup'  if exists(select name from master..sysdatabases where name = @curcompany)  begin  exec @exestring  end  delete from #wfDelegateCleanupTemp where INTERID = @curcompany  select @count = count(*) from #wfDelegateCleanupTemp end  return    
GO
GRANT EXECUTE ON  [dbo].[wfOutOfOfficeDelegationCleanupCompany] TO [DYNGRP]
GO
