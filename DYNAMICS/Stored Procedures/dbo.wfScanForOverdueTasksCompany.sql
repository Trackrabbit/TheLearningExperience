SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[wfScanForOverdueTasksCompany]  @O_iErrorState int    = NULL   output as  declare @count as integer declare @exestring as varchar(400) declare @curcompany as varchar(10) if exists (select * from dbo.sysobjects where id =   Object_id('dbo.#wfEscalateTemp') and type in ('U','S')) begin  drop table dbo.#wfEscalateTemp end  select INTERID into #wfEscalateTemp from SY01500  select @count = count(*) from #wfEscalateTemp  while @count > 0  begin  select @curcompany = (select top 1(INTERID) from #wfEscalateTemp)  select @exestring = @curcompany + '.dbo.wfScanForOverdueTasks'  if exists(select name from master..sysdatabases where name = @curcompany)  begin  exec @exestring  end  delete from #wfEscalateTemp where INTERID = @curcompany  select @count = count(*) from #wfEscalateTemp end  return    
GO
GRANT EXECUTE ON  [dbo].[wfScanForOverdueTasksCompany] TO [DYNGRP]
GO
