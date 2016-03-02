SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeHREmployeeBirthday]( @Inactive int, @Position char (7),  @Department char(7), @Division char(7)) as IF @Inactive = 1  begin SELECT UPR00100.EMPLOYID, UPR00100.FRSTNAME, UPR00100.LASTNAME, UPR00100.BRTHDATE, UPR00100.DEPRTMNT, UPR00100.DIVISIONCODE_I, UPR00100.JOBTITLE, UPR00100.INACTIVE, [Employee ID For Drillback]        FROM UPR00100  inner join Employees on  UPR00100.EMPLOYID = Employees.[Employee ID]        WHERE  (@Department = '*All' or UPR00100.DEPRTMNT IN (@Department)) AND      (@Position = '*All' or  UPR00100.JOBTITLE IN (@Position)) AND      (@Division = '*All' or UPR00100.DIVISIONCODE_I IN (@Division))        end                 ELSE begin                 SELECT UPR00100.EMPLOYID, UPR00100.FRSTNAME, UPR00100.LASTNAME, UPR00100.BRTHDATE, UPR00100.DEPRTMNT, UPR00100.DIVISIONCODE_I, UPR00100.JOBTITLE, UPR00100.INACTIVE, [Employee ID For Drillback]        FROM UPR00100 inner join Employees on  UPR00100.EMPLOYID = Employees.[Employee ID]        WHERE   (@Department = '*All' or UPR00100.DEPRTMNT IN (@Department)) AND      (@Position = '*All' or  UPR00100.JOBTITLE IN (@Position)) AND      (@Division = '*All' or UPR00100.DIVISIONCODE_I IN (@Division))         AND UPR00100.INACTIVE = 0 END          
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeBirthday] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeBirthday] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeBirthday] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeHREmployeeBirthday] TO [rpt_power user]
GO
