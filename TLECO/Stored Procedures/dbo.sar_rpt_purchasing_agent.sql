SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_purchasing_agent] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_purchasing agent') begin  exec sp_addrole [rpt_purchasing agent] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_purchasing_agent] TO [DYNGRP]
GO
