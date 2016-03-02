SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUSERID]   as  declare @sql nvarchar(max),  @parm nvarchar(max),  @employeeid varchar(100)  declare @dbname varchar(max) set @dbname = isnull((select DBNAME from SY00100),'DYNAMICS')  set @sql = 'set @o_employeeid = (select EMPLOYID FROM UPR00100 A INNER JOIN ' + rtrim(@dbname) + '..SY01400 B ON A.USERID=B.USERID  where upper(ADObjectGuid) = upper(' + rtrim(@dbname) + '.dbo.GetObjectGuidByUser(SYSTEM_USER, 1, 0)))'  set @parm = '@o_employeeid varchar(100) output'  exec sp_executesql  @sql,  @parm,  @o_employeeid = @employeeid output  if @employeeid is NULL  set @employeeid = ''  select @employeeid   
GO
GRANT EXECUTE ON  [dbo].[seeUSERID] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUSERID] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUSERID] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeUSERID] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeUSERID] TO [rpt_power user]
GO
