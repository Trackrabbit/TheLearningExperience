SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[pmBuildVoucherLookupTemp] @OSName   varchar(50) , @OpenOnly tinyint  as  declare  @SQL_Statement varchar(4000)  if @OpenOnly = 0  begin  select @SQL_Statement =   'Delete from ' + @OSName + ' Insert into ' + @OSName +   ' select distinct  isnull(BACHNUMB, '''') as BACHNUMB  ,isnull(VCHNUMWK, '''') as VCHRNMBR  ,isnull(VENDORID, '''') as VENDORID  ,isnull(DOCNUMBR,'''') as DOCNUMBR  ,1 as DCSTATUS  ,isnull(DOCTYPE, 0) as DOCTYPE  from PM10000  where PSTGSTUS != 10 and BCHSOURC = ''PM_Trxent''   union all   select distinct  isnull(BACHNUMB, '''') as BACHNUMB  ,isnull(VCHRNMBR, '''') as VCHRNMBR  ,isnull(VENDORID, '''') as VENDORID  ,isnull(DOCNUMBR,'''') as DOCNUMBR  ,2 as DCSTATUS  ,isnull(DOCTYPE, 0) as DOCTYPE  from PM20000  where (BCHSOURC = ''XXPM_Trxent'' or BCHSOURC = ''PM_Trxent'')   union all    select distinct  isnull(BACHNUMB, '''') as BACHNUMB  ,isnull(VCHRNMBR, '''') as VCHRNMBR  ,isnull(VENDORID, '''') as VENDORID  ,isnull(DOCNUMBR,'''') as DOCNUMBR  ,3 as DCSTATUS  ,isnull(DOCTYPE, 0) as DOCTYPE  from PM30200  where (BCHSOURC = ''XXPM_Trxent'' or BCHSOURC = ''PM_Trxent'') and DOCTYPE = 1' end else begin  select @SQL_Statement =   'Delete from ' + @OSName + ' Insert into ' + @OSName +   ' select distinct  isnull(BACHNUMB, '''') as BACHNUMB  ,isnull(VCHNUMWK, '''') as VCHRNMBR  ,isnull(VENDORID, '''') as VENDORID  ,isnull(DOCNUMBR,'''') as DOCNUMBR  ,1 as DCSTATUS  ,isnull(DOCTYPE, 0) as DOCTYPE  from PM10000  where PSTGSTUS != 10 and BCHSOURC = ''PM_Trxent''' end  exec (@SQL_Statement)    
GO
GRANT EXECUTE ON  [dbo].[pmBuildVoucherLookupTemp] TO [DYNGRP]
GO