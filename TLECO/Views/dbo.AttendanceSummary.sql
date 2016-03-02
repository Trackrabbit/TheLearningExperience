SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AttendanceSummary] AS select rtrim(['Payroll Master'].[DIVISIONCODE_I]) as 'Division Code', rtrim(['TA_SETP_Types'].[PAYRCORD]) as 'Pay Record', 'Time Type' = dbo.DYN_FUNC_Time_Type(['TA_SETP_Types'].[TIMETYPE_I]),  rtrim(['TA_SETP_Types'].[DSCRIPTN]) as 'Time Code Description', ['TA_MSTR_Types'].[HOURS_I] as 'Hours', rtrim(['TA_SETP_Types'].[TIMECODE_I]) as 'Time Code', rtrim(['Payroll Master'].[DEPRTMNT]) as 'Department', rtrim(['Payroll Master'].[SOCSCNUM]) as 'Social Security Number', rtrim(['Payroll Master'].[EMPLCLAS]) as 'Employee Class', rtrim(['Payroll Master'].[JOBTITLE]) as 'Job Title', 'Inactive' = dbo.DYN_FUNC_Boolean_All(['Payroll Master'].[INACTIVE]), rtrim(['Payroll Master'].[LOCATNID]) as 'Location ID', rtrim(['Payroll Master'].[SUPERVISORCODE_I]) as 'Supervisor Code', rtrim(['Payroll Master'].[FRSTNAME]) as 'First Name', rtrim(['Payroll Master'].[LASTNAME]) as 'Last Name', rtrim(['Payroll Master'].[MIDLNAME]) as 'Middle Name', rtrim(['Payroll Master'].[WRKRCOMP]) as 'Workers Comp', rtrim(['Payroll Department Setup'].[DSCRIPTN]) as 'Department Description', rtrim(['TA_MSTR_Types'].[EMPID_I]) as 'Employee ID', rtrim(['TA_MSTR_Types'].[HOURSAVAILABLE_I]) as 'Hours Available', 'Print Available Time on Payroll Checks' = dbo.DYN_FUNC_Boolean_All(['TA_MSTR_Types'].[PRNAVAILTMEPYRL])            from [TATM1030] as ['TA_MSTR_Types'] with (NOLOCK) left outer join [TATM0130] as ['TA_SETP_Types'] with (NOLOCK) on ['TA_SETP_Types'].[TIMECODE_I] = ['TA_MSTR_Types'].[TIMECODE_I] left outer join [UPR00100] as ['Payroll Master'] with (NOLOCK) on ['Payroll Master'].[EMPLOYID] = ['TA_MSTR_Types'].[EMPID_I] left outer join [UPR40300] as ['Payroll Department Setup'] with (NOLOCK) on ['Payroll Department Setup'].[DEPRTMNT] = ['Payroll Master'].[DEPRTMNT] 
GO
GRANT SELECT ON  [dbo].[AttendanceSummary] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AttendanceSummary] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AttendanceSummary] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AttendanceSummary] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AttendanceSummary] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[AttendanceSummary] TO [rpt_human resource administrator]
GO
