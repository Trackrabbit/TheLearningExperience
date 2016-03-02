SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_operations_manager] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_operations manager') begin  exec sp_addrole [rpt_operations manager] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_operations_manager] TO [DYNGRP]
GO
