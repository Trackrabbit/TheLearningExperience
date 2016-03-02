SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_all_user] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_all user') begin  exec sp_addrole [rpt_all user] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_all_user] TO [DYNGRP]
GO
