SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sar_rpt_bookkeeper] as  set nocount on   if not exists (select * from sysusers where name = N'rpt_bookkeeper') begin  exec sp_addrole [rpt_bookkeeper] end  set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sar_rpt_bookkeeper] TO [DYNGRP]
GO
