SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeVacationandSickTimeAvailable]  @Employee varchar(max) as  declare @ValuesTable table (Value nvarchar(500))  insert into @ValuesTable select * from dbo.seeSplitString(@Employee, ',')  if @Employee = '' begin  select   EMPLOYID, FRSTNAME, LASTNAME, VACAVLBL, SIKTIMAV   from   UPR00100   order by EMPLOYID end else begin  select   EMPLOYID, FRSTNAME, LASTNAME, VACAVLBL, SIKTIMAV   from   UPR00100, @ValuesTable EmployeeList  where  EMPLOYID = EmployeeList.Value   order by EMPLOYID end    
GO
GRANT EXECUTE ON  [dbo].[seeVacationandSickTimeAvailable] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeVacationandSickTimeAvailable] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeVacationandSickTimeAvailable] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeVacationandSickTimeAvailable] TO [rpt_power user]
GO
