SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smUpdateStatistics] @O_iErrorState          int             = NULL  output as  declare @tablename char(255)  select @O_iErrorState = 0  DECLARE t_cursor CURSOR for   select 'update statistics ' + name  from  sysobjects where type = 'U'  and sysobjects.uid  = 1   set NOCOUNT on  open t_cursor  FETCH NEXT FROM t_cursor INTO @tablename  while (@@fetch_status <> -1)  begin  if (@@fetch_status <> -2)  begin  exec (@tablename)  end  FETCH NEXT FROM t_cursor into @tablename  end  DEALLOCATE t_cursor    
GO
GRANT EXECUTE ON  [dbo].[smUpdateStatistics] TO [DYNGRP]
GO
