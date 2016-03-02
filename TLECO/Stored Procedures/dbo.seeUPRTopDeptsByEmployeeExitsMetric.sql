SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUPRTopDeptsByEmployeeExitsMetric]  @I_dUserDate datetime = NULL,  @I_iNumDepartments int   = NULL,  @I_iPeriodMonths int   = NULL as  declare  @iterator int,    @startDate datetime,   @endDate datetime   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @endDate = DATEADD(day, -DAY(@I_dUserDate), @I_dUserDate) select  @startDate = DATEADD(month, -@I_iPeriodMonths, DATEADD(day, -DAY(@I_dUserDate)+1, @I_dUserDate))  select  top (select @I_iNumDepartments) count(e.DEMPINAC) as ExitCount,  e.DEPRTMNT as ExitDept from  UPR00100 as e with (NOLOCK) where  e.DEMPINAC >= @startDate and e.DEMPINAC <= @endDate group by  e.DEPRTMNT order by  ExitCount DESC,  ExitDept ASC    
GO
GRANT EXECUTE ON  [dbo].[seeUPRTopDeptsByEmployeeExitsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUPRTopDeptsByEmployeeExitsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUPRTopDeptsByEmployeeExitsMetric] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeUPRTopDeptsByEmployeeExitsMetric] TO [rpt_payroll]
GO
