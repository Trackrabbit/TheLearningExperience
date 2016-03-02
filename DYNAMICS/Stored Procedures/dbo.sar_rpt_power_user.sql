SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_power_user] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_power user') begin  exec sp_addrole [rpt_power user] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_power_user] TO [DYNGRP]
GO
