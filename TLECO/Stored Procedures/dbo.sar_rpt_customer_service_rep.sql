SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_customer_service_rep] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_customer service rep') begin  exec sp_addrole [rpt_customer service rep] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_customer_service_rep] TO [DYNGRP]
GO
