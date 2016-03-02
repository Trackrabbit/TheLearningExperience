SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_shipping_and_receiving] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_shipping and receiving') begin  exec sp_addrole [rpt_shipping and receiving] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_shipping_and_receiving] TO [DYNGRP]
GO
