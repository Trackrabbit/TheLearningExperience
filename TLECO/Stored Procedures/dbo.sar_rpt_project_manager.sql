SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_project_manager] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_project manager') begin  exec sp_addrole [rpt_project manager] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_project_manager] TO [DYNGRP]
GO
