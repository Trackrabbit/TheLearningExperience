SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_certified_accountant] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_certified accountant') begin  exec sp_addrole [rpt_certified accountant] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_certified_accountant] TO [DYNGRP]
GO
