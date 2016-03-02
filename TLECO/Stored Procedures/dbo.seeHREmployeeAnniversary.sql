SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeHREmployeeAnniversary]( @Inactive int, @Department char(7), @BeginDate datetime, @EndDate datetime, @Division char(7)) as If @Inactive = 1 Begin SELECT        UPR00100.EMPLOYID, UPR00100.LASTNAME, UPR00100.FRSTNAME, UPR00100.STRTDATE, UPR40301.DSCRIPTN, UPR00100.DEPRTMNT,                           UPR00100.DIVISIONCODE_I, UPR00100.INACTIVE, [Employee ID For Drillback] FROM            UPR00100 INNER JOIN                          UPR40301 ON UPR00100.JOBTITLE = UPR40301.JOBTITLE                           inner join Employees on                          UPR00100.EMPLOYID = Employees.[Employee ID] WHERE  (@Department = '*All' or UPR00100.DEPRTMNT in (@Department)  )    and STRTDATE >= @BeginDate     and STRTDATE <=@EndDate     and (@Division = '*All' or DIVISIONCODE_I in (@Division)) END ELSE Begin SELECT        UPR00100.EMPLOYID, UPR00100.LASTNAME, UPR00100.FRSTNAME, UPR00100.STRTDATE, UPR40301.DSCRIPTN, UPR00100.DEPRTMNT,                           UPR00100.DIVISIONCODE_I, UPR00100.INACTIVE,[Employee ID For Drillback] FROM            UPR00100 INNER JOIN                          UPR40301 ON UPR00100.JOBTITLE = UPR40301.JOBTITLE       inner join Employees on                          UPR00100.EMPLOYID = Employees.[Employee ID]  WHERE  (@Department = '*All' or DEPRTMNT in (@Department)  )    and STRTDATE >= @BeginDate     and STRTDATE <=@EndDate     and (@Division = '*All' or DIVISIONCODE_I in (@Division))    AND UPR00100.INACTIVE = 0 END          
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeAnniversary] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeAnniversary] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeAnniversary] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeAnniversary] TO [rpt_power user]
GO
