SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_warehouse_manager] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_warehouse manager') begin  exec sp_addrole [rpt_warehouse manager] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_warehouse_manager] TO [DYNGRP]
GO
