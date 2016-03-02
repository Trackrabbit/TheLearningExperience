SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeHROrganizationalTree] as   SELECT UPR00100.LASTNAME,          UPR00100.FRSTNAME,          UPR00100.EMPLOYID,          MPOSMAIN.EMPID_I,          MPOSMAIN.COMPANYCODE_I,          MPOSMAIN.DIVISIONCODE_I,          MPOSMAIN.DEPARTMENTCODE_I,          MPOSMAIN.POSITIONCODE_I,          HR2DIV02.DIVISION_I,          UPR40300.DSCRIPTN AS DeptDescription,          UPR40301.DSCRIPTN AS JobDescription,          DYNAMICS.dbo.SY01500.CMPNYNAM,          [Employee ID For Drillback]   FROM   UPR00100          LEFT OUTER JOIN MPOSMAIN            ON MPOSMAIN.EMPID_I = UPR00100.EMPLOYID          LEFT OUTER JOIN HR2DIV02            ON MPOSMAIN.DIVISIONCODE_I = HR2DIV02.DIVISIONCODE_I          LEFT OUTER JOIN UPR40300            ON MPOSMAIN.DEPARTMENTCODE_I = UPR40300.DEPRTMNT          LEFT OUTER JOIN UPR40301            ON MPOSMAIN.POSITIONCODE_I = UPR40301.JOBTITLE          LEFT OUTER JOIN DYNAMICS.dbo.SY01500            ON DYNAMICS.dbo.SY01500.INTERID = MPOSMAIN.COMPANYCODE_I          inner join Employees            on UPR00100.EMPLOYID = Employees.[Employee ID]          
GO
GRANT EXECUTE ON  [dbo].[seeHROrganizationalTree] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeHROrganizationalTree] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeHROrganizationalTree] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeHROrganizationalTree] TO [rpt_power user]
GO
