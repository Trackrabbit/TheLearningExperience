SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCContractRevenueYTD]  @I_dUserDate datetime = NULL as  declare  @iterator int,   @startDate datetime,   @endDate datetime,   @I_iPeriodMonths int   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @endDate = @I_dUserDate  select   @startDate =  FSTFSCDY from SY40101 where @I_dUserDate between FSTFSCDY and LSTFSCDY select  @startDate = DATEADD(HOUR, -DATEPART(HOUR, @startDate), @startDate) select  @startDate = DATEADD(MINUTE, -DATEPART(MINUTE, @startDate), @startDate) select  @startDate = DATEADD(SECOND, -DATEPART(SECOND, @startDate), @startDate) select  @startDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @startDate), @startDate) select  sum (PSTDAMNT)as ContractRevenue  from SVC00604 with (NOLOCK) where Status = 1 and (Transaction_Date >= @startDate and Transaction_Date <= @I_dUserDate) union select  sum (PSTDAMNT)as ContractRevenue  from SVC30604 with (NOLOCK) where Status = 1 and (Transaction_Date >= @startDate and Transaction_Date <= @I_dUserDate)    
GO
GRANT EXECUTE ON  [dbo].[seeSVCContractRevenueYTD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCContractRevenueYTD] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCContractRevenueYTD] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCContractRevenueYTD] TO [rpt_power user]
GO
