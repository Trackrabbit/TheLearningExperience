SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[PTOLiability] AS select ['a'].[EMPID_I] as 'Employee ID', rtrim(['b'].[LASTNAME]) + ', ' + rtrim(['b'].[FRSTNAME]) as 'Employee Name', ['a'].[TIMECODE_I] as 'Time Code', ['c'].[PAYRCORD] as 'Pay Code', ['a'].[HOURSAVAILABLE_I] / 100.0000 as 'Hours Available',  case ['d'].[PAYUNIT] when ' '   then convert(decimal(9,5), ['d'].[PAYRTAMT]/['b'].[WKHRPRYR])   else ['d'].[PAYRTAMT]  end as 'Pay Rate Per Hour',  case ['d'].[PAYUNIT] when ' '   then convert(decimal(9,2), ['d'].[PAYRTAMT]/['b'].[WKHRPRYR] * ['a'].[HOURSAVAILABLE_I] / 100.0000)   else ['d'].[PAYRTAMT] * ['a'].[HOURSAVAILABLE_I] / 100.00000  end as 'Liability'           from [TATM1030] AS ['a']  join [UPR00100] AS ['b'] on ['b'].[EMPLOYID] = ['a'].[EMPID_I]  join [TATM0130] AS ['c'] on ['a'].[TIMECODE_I] = ['c'].[TIMECODE_I]  join [UPR00400] AS ['d'] on ['a'].[EMPID_I] = ['d'].[EMPLOYID] and ['c'].[PAYRCORD] = ['d'].[PAYRCORD]  where ['a'].[TIMETYPE_I] = 4 
GO
GRANT SELECT ON  [dbo].[PTOLiability] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PTOLiability] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PTOLiability] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PTOLiability] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PTOLiability] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[PTOLiability] TO [rpt_human resource administrator]
GO
