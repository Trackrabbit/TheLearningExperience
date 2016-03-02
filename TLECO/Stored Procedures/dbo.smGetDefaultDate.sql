SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetDefaultDate]  @O_sDefaultDate  char(12)   = NULL output as  declare  @iStatus   int  select @iStatus = 0  if exists (select * from tempdb.dbo.sysobjects with (NOLOCK) where id =   Object_id('tempdb.dbo.DEFAULTDATE') and type = 'U')   begin  create table #defdate (tempdefdate char(12))  exec('insert into #defdate select DEFDATE from tempdb.dbo.DEFAULTDATE')  select @O_sDefaultDate = tempdefdate from #defdate  end else  begin  select @O_sDefaultDate = convert(char(12),getdate(),102)  end  return( @iStatus)   
GO
GRANT EXECUTE ON  [dbo].[smGetDefaultDate] TO [DYNGRP]
GO
