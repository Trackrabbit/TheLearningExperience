SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smDEX_Recover_Locks] as  declare @DEX_Lock_ID char(15) declare @iSession_id int  declare T_cursor CURSOR for select session_id from tempdb..DEX_LOCK  set nocount on OPEN T_cursor FETCH NEXT FROM T_cursor INTO @iSession_id WHILE (@@FETCH_STATUS <> -1) begin  select @DEX_Lock_ID = stuff( '##DL0000000000', 14 -  len(rtrim(ltrim((convert(char(10),@iSession_id ))))) + 1,   len(rtrim(ltrim((convert(char(10),@iSession_id ))))),   rtrim(ltrim(convert(char(10),@iSession_id ))))   if not exists ( select name   from   tempdb..sysobjects   where  tempdb..sysobjects.name = @DEX_Lock_ID)  begin  delete from tempdb..DEX_LOCK where tempdb..DEX_LOCK.session_id = @iSession_id   end  FETCH NEXT FROM T_cursor INTO @iSession_id end DEALLOCATE T_cursor  return    
GO
GRANT EXECUTE ON  [dbo].[smDEX_Recover_Locks] TO [DYNGRP]
GO
