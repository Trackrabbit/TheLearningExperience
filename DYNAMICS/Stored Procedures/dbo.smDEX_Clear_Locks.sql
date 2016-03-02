SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smDEX_Clear_Locks] @I_Session_id int   as  delete from  tempdb..DEX_LOCK where  tempdb..DEX_LOCK.session_id = @I_Session_id  return    
GO
GRANT EXECUTE ON  [dbo].[smDEX_Clear_Locks] TO [DYNGRP]
GO
