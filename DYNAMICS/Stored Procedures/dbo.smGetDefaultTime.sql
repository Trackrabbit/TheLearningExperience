SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetDefaultTime]  @O_sDefaultTime  char(12) = NULL output as declare  @iStatus int select @iStatus = 0 if exists (select * from tempdb.dbo.sysobjects with (NOLOCK) where id =   Object_id('tempdb.dbo.DEFAULTDATE') and type = 'U')   begin  create table #deftime (tempdeftime char(12))  exec('insert into #deftime select DEFTIME from tempdb.dbo.DEFAULTDATE')  select @O_sDefaultTime = tempdeftime from #deftime  end else  begin  select @O_sDefaultTime = convert(char(12),getdate(),108)  end return( @iStatus)   
GO
GRANT EXECUTE ON  [dbo].[smGetDefaultTime] TO [DYNGRP]
GO
