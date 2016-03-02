SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_accounts_receivable_coordinator] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_accounts receivable coordinator') begin  exec sp_addrole [rpt_accounts receivable coordinator] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_accounts_receivable_coordinator] TO [DYNGRP]
GO
