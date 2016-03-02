SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AttendanceDetail] AS select rtrim(['HR_Division2'].[COMPANYCODE_I]) as 'Company Code', rtrim(ISNULL(['HR_Division2'].[DIVISION_I],'')) as 'Division', rtrim(['TA_SETP_Types'].[PAYRCORD]) as 'Pay Record', 'Time Type' = dbo.DYN_FUNC_Time_Type(['TA_SETP_Types'].[TIMETYPE_I]),  rtrim(['TA_SETP_Types'].[DSCRIPTN]) as 'Time Code Description', ['TA_TRX_Detail'].[HOURS_I] as 'Hours', rtrim(['TA_TRX_Detail'].[TIMECODE_I]) as 'Time Code', ['TA_TRX_Detail'].[TRX_I] as 'TRX', ['TA_TRX_Detail'].[COMPTRNM] as 'Computer TRX Number', rtrim(['TA_TRX_Detail'].[ATTTYP]) as 'Attendance Type', rtrim(['TA_TRX_Detail'].[DIVISIONCODE_I]) as 'Division Code', rtrim(['TA_TRX_Detail'].[EMPID_I]) as 'Employee ID', ['TA_TRX_Detail'].[TRXDATE] as 'TRX Date', rtrim(['TA_TRX_Detail'].[BACHNUMB]) as 'Batch Number', rtrim(['TA_TRX_Detail'].[DEPRTMNT]) as 'Department', rtrim(['TA_TRX_Detail'].[ATTRSN]) as 'Attendance Reason', 'Attendance TRX Status' = dbo.DYN_FUNC_Attendance_TRX_Status(['TA_TRX_Detail'].[ATTTRXSTATUS]),  ['TA_TRX_Detail'].[TRXENDDT] as 'TRX Ending Date', ['TA_TRX_Detail'].[CMRECNUM] as 'Record Number', rtrim(['Payroll Master'].[SOCSCNUM]) as 'Social Security Number', rtrim(['Payroll Master'].[EMPLCLAS]) as 'Employee Class', rtrim(['Payroll Master'].[JOBTITLE]) as 'Job Title', 'Inactive' = dbo.DYN_FUNC_Boolean_All(['Payroll Master'].[INACTIVE]), rtrim(['Payroll Master'].[LOCATNID]) as 'Location ID', rtrim(['Payroll Master'].[SUPERVISORCODE_I]) as 'Supervisor Code', rtrim(['Payroll Master'].[FRSTNAME]) as 'First Name', rtrim(['Payroll Master'].[LASTNAME]) as 'Last Name', rtrim(['Payroll Master'].[MIDLNAME]) as 'Middle Name', rtrim(['Payroll Master'].[WRKRCOMP]) as 'Workers Comp', rtrim(['Payroll Department Setup'].[DSCRIPTN]) as 'Department Description', 'Accrual Flag' = dbo.DYN_FUNC_Boolean_All(['TA_TRX_Detail'].[ACCFLG])            from [TATX1030] as ['TA_TRX_Detail'] with (NOLOCK) left outer join [TATM0130] as ['TA_SETP_Types'] with (NOLOCK) on ['TA_SETP_Types'].[TIMECODE_I] = ['TA_TRX_Detail'].[TIMECODE_I] left outer join [UPR00100] as ['Payroll Master'] with (NOLOCK) on ['Payroll Master'].[EMPLOYID] = ['TA_TRX_Detail'].[EMPID_I] left outer join [HR2DIV02] as ['HR_Division2'] with (NOLOCK) on ['HR_Division2'].[DIVISIONCODE_I] = ['Payroll Master'].[DIVISIONCODE_I] left outer join [UPR40300] as ['Payroll Department Setup'] with (NOLOCK) on ['Payroll Department Setup'].[DEPRTMNT] = ['Payroll Master'].[DEPRTMNT] 
GO
GRANT SELECT ON  [dbo].[AttendanceDetail] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AttendanceDetail] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AttendanceDetail] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AttendanceDetail] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AttendanceDetail] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[AttendanceDetail] TO [rpt_human resource administrator]
GO
