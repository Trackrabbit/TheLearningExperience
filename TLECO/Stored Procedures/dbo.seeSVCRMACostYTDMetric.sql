SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSVCRMACostYTDMetric]  @I_dUserDate datetime = NULL as  declare  @iterator int,   @startDate datetime,   @endDate datetime,   @I_iPeriodMonths int   select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select  @endDate = @I_dUserDate  select   @startDate =  FSTFSCDY from SY40101 where @I_dUserDate between FSTFSCDY and LSTFSCDY select  @startDate = DATEADD(HOUR, -DATEPART(HOUR, @startDate), @startDate) select  @startDate = DATEADD(MINUTE, -DATEPART(MINUTE, @startDate), @startDate) select  @startDate = DATEADD(SECOND, -DATEPART(SECOND, @startDate), @startDate) select  @startDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @startDate), @startDate) select  sum (EXTDCOST)as TotalCost from  SVC35200 with (NOLOCK) where  (RETUDATE >= @startDate and RETUDATE <= @I_dUserDate)    
GO
GRANT EXECUTE ON  [dbo].[seeSVCRMACostYTDMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRMACostYTDMetric] TO [rpt_dispatcher]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRMACostYTDMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSVCRMACostYTDMetric] TO [rpt_power user]
GO
