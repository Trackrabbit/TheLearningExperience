SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ADH_Create_SmartListRoles] as  set nocount on   if not exists (select * from sysusers where name = N'SMARTLISTDESIGNERWF') begin  exec sp_addrole [SMARTLISTDESIGNERWF] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[ADH_Create_SmartListRoles] TO [DYNGRP]
GO
