SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_payroll] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_payroll') begin  exec sp_addrole [rpt_payroll] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_payroll] TO [DYNGRP]
GO
