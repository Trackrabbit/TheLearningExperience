SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[PostDatedPayRates] AS select rtrim(['Payroll Post Dated Pay Code Master'].[EMPLOYID]) as 'Employee ID', rtrim(['Payroll Master'].[FRSTNAME]) as 'First Name', rtrim(['Payroll Master'].[LASTNAME]) as 'Last Name', rtrim(['Payroll Master'].[MIDLNAME]) as 'Middle Name', rtrim(['Payroll Pay Code Master'].[PAYRCORD]) as 'Pay Record', ['Payroll Post Dated Pay Code Master'].[Effective_Date] as 'Effective Date', ['Payroll Pay Code Master'].[PAYRTAMT] as 'Current Pay Rate', ['Payroll Post Dated Pay Code Master'].[PAYRTAMT] as 'New Pay Rate', rtrim(['Payroll Post Dated Pay Code Master'].[CHANGEREASON_I]) as 'Reason for Change',  'Base Step Increases On' = dbo.HR_FUNC_Base_Step_Increases_On(['Payroll Pay Code Master'].[Base_Step_Increased_On]), ['Payroll Master'].[BENADJDATE] as 'Ben Adj Date', rtrim(['Payroll Master'].[DEPRTMNT]) as 'Department', rtrim(['Payroll Master'].[DIVISIONCODE_I]) as 'Division Code', rtrim(['Payroll Master'].[JOBTITLE]) as 'Job Title', rtrim(['Payroll Master'].[LOCATNID]) as 'Location ID', rtrim(['Pay Step Table Header'].[Pay_Step_Table_Desc]) as 'Pay Step Table Description', rtrim(['Payroll Post Dated Pay Code Master'].[PYSTPTBLID]) as 'Pay Step Table ID', rtrim(['Payroll Master'].[Primary_Pay_Record]) as 'Primary Pay Record', ['HR_Union'].[SENIORITYDATE_I] as 'Seniority Date', ['Payroll Master'].[STRTDATE] as 'Start Date', ['Payroll Pay Code Master'].[Step_Effective_Date] as 'Step Effective Date', rtrim(['HR_Union'].[UNIONNAME_I]) as 'Union Code', 'Unit of Pay' = dbo.HR_FUNC_Unit_of_Pay(['Pay Step Table Header'].[Pay_Step_Unit_Of_Pay])           from [UPR00402] as ['Payroll Post Dated Pay Code Master'] with (NOLOCK) left outer join [UPR00100] as ['Payroll Master'] with (NOLOCK) on ['Payroll Post Dated Pay Code Master'].[EMPLOYID] = ['Payroll Master'].[EMPLOYID] left outer join [UPR00400] as ['Payroll Pay Code Master'] with (NOLOCK) on ['Payroll Post Dated Pay Code Master'].[EMPLOYID] = ['Payroll Pay Code Master'].[EMPLOYID]  and ['Payroll Post Dated Pay Code Master'].[PAYRCORD] = ['Payroll Pay Code Master'].[PAYRCORD] left outer join [HR2UNI01] as ['HR_Union'] with (NOLOCK) on ['Payroll Post Dated Pay Code Master'].[EMPLOYID] = ['HR_Union'].[EMPID_I] left outer join [HRPS0400] as ['Pay Step Table Header'] with (NOLOCK) on ['Payroll Post Dated Pay Code Master'].[PYSTPTBLID] = ['Pay Step Table Header'].[PYSTPTBLID] 
GO
GRANT SELECT ON  [dbo].[PostDatedPayRates] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PostDatedPayRates] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PostDatedPayRates] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PostDatedPayRates] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PostDatedPayRates] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[PostDatedPayRates] TO [rpt_human resource administrator]
GO
