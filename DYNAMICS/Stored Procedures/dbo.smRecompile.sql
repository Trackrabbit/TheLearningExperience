SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smRecompile] @O_iErrorState          int             = NULL  output  as  declare @tablename char(255)  DECLARE t_cursor CURSOR for   select 'sp_recompile ' + name  from  sysobjects where type = 'U'  and sysobjects.uid  = 1   set NOCOUNT on  open t_cursor  FETCH NEXT FROM t_cursor INTO @tablename  while (@@fetch_status <> -1)  begin  if (@@fetch_status <> -2)  begin  exec (@tablename)  end  FETCH NEXT FROM t_cursor into @tablename  end  DEALLOCATE t_cursor  select @O_iErrorState = 0    
GO
GRANT EXECUTE ON  [dbo].[smRecompile] TO [DYNGRP]
GO
