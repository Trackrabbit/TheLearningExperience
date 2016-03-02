SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_production_planner] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_production planner') begin  exec sp_addrole [rpt_production planner] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_production_planner] TO [DYNGRP]
GO
