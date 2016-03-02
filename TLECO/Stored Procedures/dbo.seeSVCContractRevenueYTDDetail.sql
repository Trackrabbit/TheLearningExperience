SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCContractRevenueYTDDetail]  @I_dUserDate datetime = NULL,  @I_iPeriodMonths int   = NULL as  declare  @iterator int,   @startDate datetime,   @endDate datetime  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select   @startDate =  FSTFSCDY from SY40101 where @I_dUserDate between FSTFSCDY and LSTFSCDY  select @endDate = @startDate , @iterator = 1  create table #ContractRevenues (ContractRevenue numeric(19, 5) not null,   MonthDate datetime not null)  while (@I_dUserDate > = @endDate) begin  insert #ContractRevenues values(0, @endDate)  select @endDate = DATEADD(month, @iterator, @endDate)  select @iterator = @iterator + 1 end  insert #ContractRevenues  (ContractRevenue,  MonthDate) select  sum (PSTDAMNT)as ContractRevenue,  DATEADD(day, -DAY(Transaction_Date)+1, Transaction_Date) as MonthDate from  SVC00604 with (NOLOCK) where  Status = 1 and (Transaction_Date >= @startDate and Transaction_Date <= @I_dUserDate) group by  Transaction_Date UNION select  sum (PSTDAMNT)as ContractRevenue,  DATEADD(day, -DAY(Transaction_Date)+1, Transaction_Date) as MonthDate from  SVC30604 with (NOLOCK) where  Status = 1 and (Transaction_Date >= @startDate and Transaction_Date <= @I_dUserDate) group by  Transaction_Date  select ContractRevenue,  MonthDate from #ContractRevenues order by MonthDate  drop table #ContractRevenues    
GO
GRANT EXECUTE ON  [dbo].[seeSVCContractRevenueYTDDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCContractRevenueYTDDetail] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCContractRevenueYTDDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCContractRevenueYTDDetail] TO [rpt_power user]
GO
