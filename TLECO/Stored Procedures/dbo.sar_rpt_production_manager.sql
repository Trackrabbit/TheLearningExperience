SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_production_manager] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_production manager') begin  exec sp_addrole [rpt_production manager] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_production_manager] TO [DYNGRP]
GO
