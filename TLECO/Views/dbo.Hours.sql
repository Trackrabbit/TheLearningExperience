SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[Hours] AS select ['T2'].[EMPLOYID] as 'Employee ID', rtrim(['T2'].[LASTNAME]) + ', ' + rtrim(['T2'].[FRSTNAME]) as 'Employee Name', ['T1'].[TIMECODE_I] as 'Time Code', convert(decimal(9,2),(convert(decimal(9,2), ['T1'].[HOURSAVAILABLE_I]) / 100)) as 'Hours Available'           from [TATM1030] as ['T1'] WITH (NOLOCK)  INNER JOIN [UPR00100] as ['T2'] WITH (NOLOCK) on ['T2'].[EMPLOYID] =  ['T1'].[EMPID_I] 
GO
GRANT SELECT ON  [dbo].[Hours] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[Hours] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[Hours] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[Hours] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[Hours] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[Hours] TO [rpt_human resource administrator]
GO
