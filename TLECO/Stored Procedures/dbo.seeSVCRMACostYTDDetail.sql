SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCRMACostYTDDetail]  @I_dUserDate datetime = NULL,  @I_iPeriodMonths int   = NULL as  declare  @iterator int,   @startDate datetime,   @endDate datetime   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select @startDate =  FSTFSCDY from SY40101 where @I_dUserDate between FSTFSCDY and LSTFSCDY select @endDate = @startDate , @iterator = 1  create table #RMACostCounts (RMACost numeric(19, 5) not null,   MonthDate datetime not null)  while (@I_dUserDate > = @endDate) begin  insert #RMACostCounts values(0,  @endDate)  select @endDate = DATEADD(month, @iterator, @endDate)  select @iterator = @iterator + 1 end  insert #RMACostCounts  (RMACost,  MonthDate) select  sum (EXTDCOST)as RMACost,  DATEADD(day, -DAY(RETUDATE)+1, RETUDATE) as MonthDate from  SVC35200 with (NOLOCK) where  (RETUDATE >= @startDate and RETUDATE <= @I_dUserDate) group by RETUDATE  select RMACost,  MonthDate from #RMACostCounts   order by MonthDate  drop table #RMACostCounts    
GO
GRANT EXECUTE ON  [dbo].[seeSVCRMACostYTDDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRMACostYTDDetail] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRMACostYTDDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRMACostYTDDetail] TO [rpt_power user]
GO
