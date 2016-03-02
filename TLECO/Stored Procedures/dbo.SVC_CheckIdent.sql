SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_CheckIdent] as  declare @Table varchar(50) declare @Display varchar(100) declare ident cursor for select o.name from syscolumns c,sysobjects o  where c.id = o.id and  c.name = 'DEX_ROW_ID' set nocount on open ident fetch next from ident into @Table while @@FETCH_STATUS = 0  BEGIN  select @Display = 'Checking table ' + @Table  print ' '  print @Display  dbcc checkident(@Table)  fetch next from ident into @Table  END deallocate ident    
GO
GRANT EXECUTE ON  [dbo].[SVC_CheckIdent] TO [DYNGRP]
GO
