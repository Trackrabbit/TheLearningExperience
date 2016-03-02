SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_accounts_payable_coordinator] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_accounts payable coordinator') begin  exec sp_addrole [rpt_accounts payable coordinator] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_accounts_payable_coordinator] TO [DYNGRP]
GO
