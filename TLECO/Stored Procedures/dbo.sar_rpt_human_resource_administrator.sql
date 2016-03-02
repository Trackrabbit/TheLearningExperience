SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_human_resource_administrator] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_human resource administrator') begin  exec sp_addrole [rpt_human resource administrator] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_human_resource_administrator] TO [DYNGRP]
GO
