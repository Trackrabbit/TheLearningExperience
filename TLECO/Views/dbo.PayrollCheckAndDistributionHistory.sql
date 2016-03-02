SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[PayrollCheckAndDistributionHistory] AS select rtrim(['Payroll Check History'].[AUCTRLCD]) as 'Audit Control Code', ['Payroll Check History'].[PYADNMBR] as 'Payment/Adjustment Number', ['Payroll Check History'].[Uncollected_FICASS_TaxP] as 'Uncollected FICA/SS Tax/Pay Run', rtrim(['Payroll Check History'].[EMPLOYID]) as 'Employee ID', ['Payroll Check History'].[ADEICPMT] as 'Advance EIC Payment', ['Payroll Check History'].[YEAR1] as 'Year', ['Payroll Check History'].[GRWGPRN] as 'Gross Wages/Pay Run', rtrim(['Payroll Check History'].[RSNCHKVD]) as 'Reason Check Voided', ['Payroll Check History'].[TTLDDTNS] as 'Total Deductions', ['Payroll Check History'].[FICSTPTX] as 'FICA/SS Tax on Tips', rtrim(['Payroll Check History'].[SOCSCNUM]) as 'Social Security Number', ['Payroll Check History'].[Uncollected_FICAMed_TaxP] as 'Uncollected FICA/Med Tax/Pay Run', ['Payroll Check History'].[CHEKDATE] as 'Check Date', rtrim(['Payroll Check History'].[CHEKBKID]) as 'Checkbook ID', ['Payroll Check History'].[TOTLTAXS] as 'Total Taxes', 'Voided' = dbo.DYN_FUNC_Boolean_All(['Payroll Check History'].[VOIDED]), ['Payroll Check History'].[FDTXTIPS] as 'Federal Tax on Tips', ['Payroll Check History'].[FDWDGPRN] as 'Federal Withholding/Pay Run', rtrim(['Payroll Check History'].[DEPRTMNT]) as 'Department', ['Payroll Check History'].[NTWPYRN] as 'Net Wages/Pay Run', rtrim(['Payroll Check History'].[CHEKNMBR]) as 'Check Number', ['Payroll Check History'].[FICAMWPR] as 'FICA/Medicare Withholding/Pay Run', ['Payroll Check History'].[FICMTPTX] as 'FICA/Med Tax on Tips', rtrim(['Payroll Check History'].[EMPLNAME]) as 'Employee Name', 'Voided by Void Checks' = dbo.DYN_FUNC_Boolean_All(['Payroll Check History'].[Voided_by_Void_Checks]), ['Payroll Check History'].[FCASWPR] as 'FICA/Social Security Withholding/Pay Run', ['Payroll Check History'].[TTLBNFTS] as 'Total Benefit', 'Approval' = dbo.DYN_FUNC_Boolean_All(['Payroll Distribution History Header'].[APPROVL]), ['Payroll Distribution History Header'].[POSTEDDT] as 'Posted Date',  'Checkbook ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCheckbookID(1,['Payroll Check History'].[CHEKBKID] ), 'Employee ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppEmployeeID(1,['Payroll Check History'].[EMPLOYID] )          from [UPR30100] as ['Payroll Check History'] with (NOLOCK) left outer join [UPR30400] as ['Payroll Distribution History Header'] with (NOLOCK) on ['Payroll Check History'].[AUCTRLCD] = ['Payroll Distribution History Header'].[AUCTRLCD]  
GO
GRANT SELECT ON  [dbo].[PayrollCheckAndDistributionHistory] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PayrollCheckAndDistributionHistory] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PayrollCheckAndDistributionHistory] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PayrollCheckAndDistributionHistory] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PayrollCheckAndDistributionHistory] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[PayrollCheckAndDistributionHistory] TO [rpt_payroll]
GO
