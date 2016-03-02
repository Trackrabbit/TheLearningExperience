SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_purchasing_manager] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_purchasing manager') begin  exec sp_addrole [rpt_purchasing manager] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_purchasing_manager] TO [DYNGRP]
GO
