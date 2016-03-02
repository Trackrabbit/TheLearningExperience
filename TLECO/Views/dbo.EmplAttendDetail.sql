SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[EmplAttendDetail] AS select ['T1'].[TRX_I] as 'TRX', ['T1'].[EMPID_I] as 'Employee ID', rtrim(['T2'].[LASTNAME]) + ', ' + rtrim(['T2'].[FRSTNAME]) as 'Employee Name', ['T2'].[STRTDATE] as 'Start Date', ['T1'].[JOBTITLE] as 'Job Title', ['T1'].[DEPRTMNT] as 'Department', ['T1'].[TIMECODE_I] as 'Time Code', ['T1'].[TRXDATE] as 'TRX Date', ['T1'].[TRXENDDT] as 'TRX Ending Date', convert(decimal(9,2), (['T1'].[HOURS_I]/100.00)) as 'Hours', 'Accrual Flag' = dbo.DYN_FUNC_Boolean_All(['T1'].[ACCFLG]), 'Accrue Time Benefits' = dbo.DYN_FUNC_Boolean_All(['T1'].[ACCRUETIMEBENEFITS_I]), 'Posted' = dbo.DYN_FUNC_Boolean_All(['T1'].[POSTED]), ['T1'].[ATTTYP] as 'Attendance Type', ['T1'].[ATTRSN] as 'Attendance Reason'           from [TATX1030] as ['T1'] WITH (NOLOCK)  INNER JOIN [UPR00100] as ['T2']  WITH (NOLOCK) on ['T2'].[EMPLOYID] =  ['T1'].[EMPID_I] 
GO
GRANT SELECT ON  [dbo].[EmplAttendDetail] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EmplAttendDetail] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EmplAttendDetail] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EmplAttendDetail] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[EmplAttendDetail] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[EmplAttendDetail] TO [rpt_human resource administrator]
GO
