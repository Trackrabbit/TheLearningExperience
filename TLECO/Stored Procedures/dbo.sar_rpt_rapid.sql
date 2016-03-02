SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_rapid] as  set nocount on   if not exists (select * from sysusers where name = N'RAPIDGRP') begin  exec sp_addrole [RAPIDGRP] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_rapid] TO [DYNGRP]
GO
