SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[HRPCombined] AS select ['a'].[EMPLOYID] as 'Employee ID', rtrim(['a'].[LASTNAME]) + ', ' + rtrim(['a'].[FRSTNAME]) as 'Employee Name', ['a'].[Primary_Pay_Record] as 'Primary Pay Code', ['b'].[PAYRCORD] as 'Pay Code', ['b'].[PAYRTAMT] as 'Pay Rate Amount', ['b'].[PAYUNIT] as 'Pay Unit', ['c'].[PAYRTAMT] as 'Primary Pay Rate', ['e'].[TIMECODE_I] as 'Time Code', convert(decimal(9,2),['e'].[HOURSAVAILABLE_I]/100) as 'Time Available', case ['b'].[PAYUNIT] when 'Hourly'   then convert(decimal(9,2), (['b'].[PAYRTAMT] * (['e'].[HOURSAVAILABLE_I]/100.00)))    else convert(decimal(9,2), (['b'].[PAYRTAMT] * (['e'].[HOURSAVAILABLE_I]/100.00) / ['a'].[WKHRPRYR]))  end as 'Liability'           from [UPR00100] as ['a'] WITH (NOLOCK)  left outer join [UPR00400] as ['b'] WITH (NOLOCK) on ['a'].[EMPLOYID] = ['b'].[EMPLOYID] left outer join [UPR00400] as ['c'] WITH (NOLOCK) on ['a'].[EMPLOYID] = ['c'].[EMPLOYID] and ['a'].[Primary_Pay_Record] = ['c'].[PAYRCORD] left outer join [TATM0130] as ['d'] WITH (NOLOCK) on ['b'].[PAYRCORD] = ['d'].[PAYRCORD] left outer join [TATM1030] as ['e'] WITH (NOLOCK) on ['e'].[TIMECODE_I] = ['d'].[TIMECODE_I]  and ['e'].[EMPID_I] = ['b'].[EMPLOYID] 
GO
GRANT SELECT ON  [dbo].[HRPCombined] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPCombined] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPCombined] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPCombined] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[HRPCombined] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[HRPCombined] TO [rpt_human resource administrator]
GO
