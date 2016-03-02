SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeEnrolledBenefitandDeductionSummary]  @Employee varchar(max) as  declare @ValuesTable table (Value nvarchar(500))  insert into @ValuesTable select * from dbo.seeSplitString(@Employee, ',')  if @Employee = '' begin  select   a.EMPLOYID, a.FRSTNAME, a.LASTNAME,  isnull( b.BENEFIT, '') as BENEFIT,   isnull( b.BNFBEGDT, '1/1/1900') as BNFBEGDT,   isnull ( b. COSTEMPLOYEE_I, 0.0) as  COSTEMPLOYEE_I,  isnull( b.COSTEMPLOYER_I, 0.0) as COSTEMPLOYER_I,   isnull( b.IBENEFITAMOUNT_I, 0.0) as IBENEFITAMOUNT_I,  EmployeeIDDrillBack = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0) + dbo.dgppEmployeeID(1,EMPLOYID)  from   UPR00100 a left outer join  BE010130 b on  a.EMPLOYID = b.EMPID_I  order by EMPLOYID, isnull(BENEFIT, '') end else begin  select   a.EMPLOYID, a.FRSTNAME, a.LASTNAME,  isnull( b.BENEFIT, '') as BENEFIT,   isnull( b.BNFBEGDT, '1/1/1900') as BNFBEGDT,   isnull ( b. COSTEMPLOYEE_I, 0.0) as  COSTEMPLOYEE_I,  isnull( b.COSTEMPLOYER_I, 0.0) as COSTEMPLOYER_I,   isnull( b.IBENEFITAMOUNT_I, 0.0) as IBENEFITAMOUNT_I,  EmployeeIDDrillBack = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0) + dbo.dgppEmployeeID(1,EMPLOYID)  from   UPR00100 a inner join @ValuesTable EmployeeList on  a.EMPLOYID = EmployeeList.Value  left outer join BE010130 b on  a.EMPLOYID = b.EMPID_I   order by EMPLOYID, isnull(BENEFIT, '') end    
GO
GRANT EXECUTE ON  [dbo].[seeEnrolledBenefitandDeductionSummary] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeEnrolledBenefitandDeductionSummary] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeEnrolledBenefitandDeductionSummary] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[seeEnrolledBenefitandDeductionSummary] TO [rpt_power user]
GO
