SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_shop_supervisor] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_shop supervisor') begin  exec sp_addrole [rpt_shop supervisor] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_shop_supervisor] TO [DYNGRP]
GO
