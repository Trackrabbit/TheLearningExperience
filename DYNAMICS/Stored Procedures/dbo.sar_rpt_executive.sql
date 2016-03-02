SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_executive] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_executive') begin  exec sp_addrole [rpt_executive] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_executive] TO [DYNGRP]
GO
