SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRunProcedure] @I_vText text, @I_vdbName char(8), @O_SQL_Error_State int = NULL  output /*with encryption*/ as  declare @iStatus int, @cStatement char(50) select @iStatus = 0  if ( @I_vdbName <> '' ) begin select @cStatement =  "   use  "   + @I_vdbName  exec (@cStatement ) end  exec ( @I_vText ) select @O_SQL_Error_State = @iStatus return ( @iStatus )
GO
GRANT EXECUTE ON  [dbo].[taRunProcedure] TO [DYNGRP]
GO
