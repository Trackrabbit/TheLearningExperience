SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUPREmployeePaymentTypesMetric] as declare  @Date datetime  select @Date = GETDATE()  select  @Date = DATEADD(HOUR, -DATEPART(HOUR, @Date), @Date) select  @Date = DATEADD(MINUTE, -DATEPART(MINUTE, @Date), @Date) select  @Date = DATEADD(SECOND, -DATEPART(SECOND, @Date), @Date) select  @Date = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @Date), @Date)  create table #PaymentTypes (PaymentType char(25) not null,   Total numeric(19,5) not null)  insert #PaymentTypes  (PaymentType,  Total)  select 'Check', isnull(count(E.EMPLOYID) - sum(case D.INACTIVE   when 1 then 0  when 0 then 1  end),0) as Checks  from UPR00100 as E with (NOLOCK) LEFT OUTER JOIN DD00100 as D with (NOLOCK)  on E.EMPLOYID = D.EMPLOYID  where (E.DEMPINAC > @Date or E.INACTIVE = 0)  or D.INACTIVE = 0  insert #PaymentTypes  (PaymentType,  Total) select 'Deposit', isnull(sum(case D.INACTIVE   when 1 then 0  when 0 then 1  end),0) as Deposits  from UPR00100 as E with (NOLOCK) LEFT OUTER JOIN DD00100 as D with (NOLOCK)  on E.EMPLOYID = D.EMPLOYID  where (E.DEMPINAC > @Date or E.INACTIVE = 0)  or D.INACTIVE = 0  select * from #PaymentTypes with (NOLOCK)  drop table #PaymentTypes  set nocount OFF RETURN   
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeePaymentTypesMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeePaymentTypesMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUPREmployeePaymentTypesMetric] TO [rpt_payroll]
GO
