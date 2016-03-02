SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[smCheckRelationID]  @I_iRELID int = NULL,  @IO_iStatus int = NULL output as declare @filtername varchar(255) declare @poststring varchar(255) declare @iLoop int declare @sString varchar(255) select @iLoop = 1 select @IO_iStatus = 0 select @poststring = ' where RELID = ' + convert(char(5),@I_iRELID) DECLARE c_cursor CURSOR for  select 'declare @holder integer select @holder = 1 from ' + rtrim(INTERID) +'.dbo.GL00100F'  from  DYNAMICS..SY01500 c, master.dbo.sysdatabases d  where  c.INTERID = d.name   set NOCOUNT on  open c_cursor  FETCH NEXT FROM c_cursor INTO @filtername  while (@@fetch_status <> -1)  begin  if (@@fetch_status <> -2)  begin  select @iLoop = 1  while (@iLoop < 5)  begin   select @sString = @filtername + convert(char(1),@iLoop) + @poststring  exec (@sString)  if @@rowcount <> 0  begin  select @IO_iStatus = 1  break  end  select @iLoop = @iLoop + 1  end  end  FETCH NEXT FROM c_cursor into @filtername  end  DEALLOCATE c_cursor   
GO
GRANT EXECUTE ON  [dbo].[smCheckRelationID] TO [DYNGRP]
GO
